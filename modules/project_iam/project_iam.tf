resource "google_project_iam_member" "project" {
  project = var.project_id
  role    = "roles/editor"
  member  = "user:terry@onixnet.com"
}

resource "google_project_iam_binding" "project_owners" {
  project = var.project_id
  role    = "roles/owner"

  members = [
    "user:terry@onixdev2.com"
  ]
}

resource "google_project_iam_binding" "project_editors" {
  project = var.project_id
  role    = "roles/editor"

  members = [
    "user:terry@onixnet.com",
    "serviceAccount:321230582999@cloudbuild.gserviceaccount.com"
  ]
}

resource "google_project_iam_binding" "project_securityAdmin" {
  project = var.project_id
  role    = "roles/iam.securityAdmin"

  members = [
    "serviceAccount:321230582999@cloudbuild.gserviceaccount.com"
  ]
}

resource "google_project_iam_binding" "project_roleAdmin" {
  project = var.project_id
  role    = "roles/iam.roleAdmin"

  members = [
    "serviceAccount:321230582999@cloudbuild.gserviceaccount.com"
  ]
}

resource "google_project_iam_binding" "project_cloudBuildServiceAccount" {
  project = var.project_id
  role    = "roles/cloudbuild.builds.builder"

  members = [
    "serviceAccount:321230582999@cloudbuild.gserviceaccount.com"
  ]
}