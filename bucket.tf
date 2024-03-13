provider "google" {
  project        = "dev-env-1-412811"
  region         = "us-central1"
}

resource "random_id" "bucket_id" {
  byte_length = 8
}

resource "google_storage_bucket" "bucket" {
  name     = "my-bucket-${random_id.bucket_id.hex}"
  project  = "dev-env-1-412811"
  location = 
}