resource "google_project_iam_member" "project" {
  project = var.project_id
  role    = "roles/editor"
  member  = "user:terry@onixnet.com"
}

resource "google_project_iam_member" "project" {
  project = var.project_id
  role    = "roles/compute.xpnAdmin"
  member  = "user:terry@onixnet.com"
}