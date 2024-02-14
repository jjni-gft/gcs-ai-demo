provider "google" {
  project = "dev-env-1-412811"
}

resource "random_id" "bucket_id" {
  byte_length = 2
}

resource "google_storage_bucket" "bucket" {
  name                        = "bucket-${random_id.bucket_id.hex}"
  location                    = "US"

  uniform_bucket_level_access = true
}