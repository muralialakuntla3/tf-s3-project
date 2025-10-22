# aws region
variable "aws-region"{
  description = "aws region"
  type        = string
}

variable "aws-access-key" {
  description = "aws access key"
  type        = string
}

variable "aws-secret-key" {
  description = "aws secret access key"
  type        = string
}


variable "bucket_names" {
  description = "List of S3 bucket names to create"
  type        = list(string)
}

variable "policy_file" {
  description = "Path to the S3 bucket policy file"
  type        = string
  default     = "policy.json"
}