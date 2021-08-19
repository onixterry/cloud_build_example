variable "project_id" {
  type        = string
  description = "The GCP Project ID"
  default     = "terry-terraform062021"
}

variable "region" {
  type        = string
  description = "The GCP region where the resources are deployed to"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "The GCP zone where the resources are deployed to"
  default     = "us-central1-a"
}