variable "codebuild_webhooks" {
  description = <<EOT
Map of codebuild_webhooks, attributes below
Required:
    - project_name
Optional:
    - branch_filter
    - build_type
    - manual_creation
    - region
    - filter_group (block):
        - filter (optional, block):
            - exclude_matched_pattern (optional)
            - pattern (required)
            - type (required)
    - pull_request_build_policy (block):
        - approver_roles (optional)
        - requires_comment_approval (required)
    - scope_configuration (block):
        - domain (optional)
        - name (required)
        - scope (required)
EOT

  type = map(object({
    project_name    = string
    branch_filter   = optional(string)
    build_type      = optional(string)
    manual_creation = optional(bool)
    region          = optional(string)
    filter_group = optional(list(object({
      filter = optional(list(object({
        exclude_matched_pattern = optional(bool)
        pattern                 = string
        type                    = string
      })))
    })))
    pull_request_build_policy = optional(object({
      approver_roles            = optional(set(string))
      requires_comment_approval = string
    }))
    scope_configuration = optional(object({
      domain = optional(string)
      name   = string
      scope  = string
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

