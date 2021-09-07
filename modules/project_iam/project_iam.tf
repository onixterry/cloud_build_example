resource "google_project_iam_member" "project" {
  project = var.project_id
  role    = "roles/editor"
  member  = "user:terry@onixnet.com"
}

resource "google_project_iam_binding" "project_editors" {
  project = var.project_id
  role    = "roles/editor"

  members = [
    "user:terry@onixnet.com",
    "user:terry@searchdemo.onixnet.com",
    "user:321230582999@cloudbuild.gserviceaccount.com"

  ]
}