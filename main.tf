resource "github_issue_labels" "issue_labels" {
  for_each = var.issue_labels

  repository = each.value.repository

  dynamic "label" {
    for_each = each.value.label != null ? each.value.label : []
    content {
      color       = label.value.color
      description = label.value.description
      name        = label.value.name
    }
  }
}

