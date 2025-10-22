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


variable "bucket_count" {
  description = "Number of S3 buckets to create"
  type        = number
}


variable "policy_file" {
  description = "Path to the S3 bucket policy JSON file"
  type        = string
  default     = "policy.json"
}
