variable "issue_labels" {
  description = <<EOT
Map of issue_labels, attributes below
Required:
    - repository
Optional:
    - label (block):
        - color (required)
        - description (optional)
        - name (required)
EOT

  type = map(object({
    repository = string
    label = optional(list(object({
      color       = string
      description = optional(string)
      name        = string
    })))
  }))
}

