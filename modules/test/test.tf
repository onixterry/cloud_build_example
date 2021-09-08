resource "google_project_iam_member" "editors" {
  count   = length(var.editor_list)
  project = var.project_id
  role    = "roles/editor"
  member  = "user:${element(var.editor_list, count.index)}"
}