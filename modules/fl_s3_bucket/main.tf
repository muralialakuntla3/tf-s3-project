resource "aws_s3_bucket" "fl_bucket" {
  for_each = toset(var.bucket_names)

  bucket = each.value

  tags = {
    Name        = each.value
    Environment = "dev"
  }
}

resource "aws_s3_bucket_public_access_block" "fl_bucket_block" {
  for_each = aws_s3_bucket.fl_bucket

  bucket = each.value.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_policy" "fl_bucket_policy" {
  for_each = {
    for idx, name in var.bucket_names : name => var.policy_file[idx]
  }

  bucket = aws_s3_bucket.fl_bucket[each.key].id
  policy = file(each.value)

  depends_on = [aws_s3_bucket_public_access_block.fl_bucket_block]
}
