variable "bucket_names" {
  description = "List of bucket names"
  type        = list(string)
}

variable "policy_file" {
  description = "List of policy file paths"
  type        = list(string)
}
