variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
  default     = "cloud-native-sl-bucket"
}