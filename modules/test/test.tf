resource "google_project_iam_member" "editors" {
  count   = length(var.editor_list)
  project = var.project_id
  role    = "roles/editor"
  member  = "user:${element(var.editor_list, count.index)}"
}

resource "google_project_iam_member" "editorsSvcAcct" {
  count   = length(var.editor_svcAcct_list)
  project = var.project_id
  role    = "roles/editor"
  member  = "serviceAccount:${element(var.editor_svcAcct_list, count.index)}"
}