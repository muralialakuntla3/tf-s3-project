module "fl_s3_bucket" {
  source       = "./modules/fl_s3_bucket"
  bucket_names = var.bucket_names
  policy_file  = var.policy_file
}
