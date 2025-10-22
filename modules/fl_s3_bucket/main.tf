resource "aws_s3_bucket" "fl_bucket" {
  count = var.bucket_count

  bucket = "fl-demo-bucket-${count.index + 1}"

  tags = {
    Name        = "fl-demo-bucket-${count.index + 1}"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_policy" "fl_bucket_policy" {
  count  = var.bucket_count
  bucket = aws_s3_bucket.fl_bucket[count.index].id
  policy = file(var.policy_file)
}
