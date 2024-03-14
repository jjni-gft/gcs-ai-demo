variable "project" {
  description = "The project ID to host the resources"
  type        = string
}

variable "region" {
  description = "The region where resources should be created"
  type        = string
}

variable "byte_length" {
  description = "The byte length for the random id"
  type        = number
}

variable "bucket_name" {
  description = "The name for the GCS bucket"
  type        = list(string)
  default     = ["my-example-bucket"]
}

variable "bucket_location" {
  description = "The location for the GCS bucket"
  type        = string
}