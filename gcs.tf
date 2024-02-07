provider "google" {
  project = "dev-env-1-412811"
  region  = "eu-west1"
}

resource "google_storage_bucket" "bucket" {
  name                        = "ai-demo-bucket-${random_id.bucket_id.hex}"
  location                    = "EU"
  uniform_bucket_level_access = true
}

resource "random_id" "bucket_id" {
  byte_length = 4
}