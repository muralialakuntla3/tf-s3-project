module "fl_s3_bucket" {
  source        = "./modules/fl_s3_bucket"
  bucket_count  = var.bucket_count
  policy_file   = var.policy_file
}
