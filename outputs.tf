output "issue_labels_id" {
  description = "Map of id values across all issue_labels, keyed the same as var.issue_labels"
  value       = { for k, v in github_issue_labels.issue_labels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "issue_labels_label" {
  description = "Map of label values across all issue_labels, keyed the same as var.issue_labels"
  value       = { for k, v in github_issue_labels.issue_labels : k => v.label if v.label != null && length(v.label) > 0 }
}
output "issue_labels_repository" {
  description = "Map of repository values across all issue_labels, keyed the same as var.issue_labels"
  value       = { for k, v in github_issue_labels.issue_labels : k => v.repository if v.repository != null && length(v.repository) > 0 }
}

