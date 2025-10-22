output "bucket_names" {
  value = [for b in aws_s3_bucket.fl_bucket : b.bucket]
}
