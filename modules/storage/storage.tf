resource "google_storage_bucket" "bucket-for-state" {
  name        = "terry-terraform062021-cloudbuild"
  location    = "US"
}