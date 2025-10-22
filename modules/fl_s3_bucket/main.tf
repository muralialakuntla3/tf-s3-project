resource "aws_s3_bucket" "fl_bucket" {
  count = var.bucket_count

  bucket = "fl-demo-bucket-${count.index + 1}"

  tags = {
    Name        = "fl-demo-bucket-${count.index + 1}"
    Environment = "dev"
  }
}

# Disable block public access for each bucket
resource "aws_s3_bucket_public_access_block" "fl_bucket_block" {
  count  = var.bucket_count
  bucket = aws_s3_bucket.fl_bucket[count.index].id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# Apply bucket policy after public access is unblocked
resource "aws_s3_bucket_policy" "fl_bucket_policy" {
  count  = var.bucket_count
  bucket = aws_s3_bucket.fl_bucket[count.index].id
  policy = templatefile(var.policy_file, {
    bucket_name = aws_s3_bucket.fl_bucket[count.index].bucket
  })

  depends_on = [aws_s3_bucket_public_access_block.fl_bucket_block]
}
