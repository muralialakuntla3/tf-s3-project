resource "aws_s3_bucket" "this" {
  count = var.bucket_count

  bucket = "fl-${var.bucket_names[count.index]}"

  tags = {
    Name        = "fl-${var.bucket_names[count.index]}"
    Environment = "dev"
  }
}

resource "aws_s3_bucket_policy" "this" {
  count  = var.bucket_count
  bucket = aws_s3_bucket.this[count.index].id
  policy = file(var.policy_file)
}
