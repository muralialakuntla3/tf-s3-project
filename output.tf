output "bucket_names" {
  description = "Names of created S3 buckets"
  value       = module.fl_s3_bucket.bucket_names
}
