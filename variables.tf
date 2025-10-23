# aws region
variable "aws-region"{
  description = "aws region"
  type        = string
}

variable "bucket_names" {
  description = "List of S3 bucket names to create"
  type        = list(string)
}

variable "policy_file" {
  description = "List of policy file paths"
  type        = list(string)
}
