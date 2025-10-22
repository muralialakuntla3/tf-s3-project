variable "bucket_names" {
  description = "List of bucket names"
  type        = list(string)
}

variable "policy_file" {
  description = "Path to policy JSON file"
  type        = string
}
