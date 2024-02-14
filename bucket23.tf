provider "google" {
  project = "dev-env-1-412811"
}

resource "random_id" "bucket_id" {
  byte_length = 8
}

resource "google_storage_bucket" "bucket" {
  name                        = "my-bucket-${random_id.bucket_id.hex}"
  location                    = "US"
  uniform_bucket_level_access = true
  versioning {
    enabled = true
  }
  logging {
    log_bucket        = "my-logs-bucket"
    log_object_prefix = "log"
  }
}