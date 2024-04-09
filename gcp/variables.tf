variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "backstage-demo-v2"
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
  default     = "cloud-native-sl-bucket"
  
}