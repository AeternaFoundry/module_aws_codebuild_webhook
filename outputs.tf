output "codebuild_webhooks_id" {
  description = "Map of id values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "codebuild_webhooks_branch_filter" {
  description = "Map of branch_filter values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => v.branch_filter if v.branch_filter != null && length(v.branch_filter) > 0 }
}
output "codebuild_webhooks_build_type" {
  description = "Map of build_type values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => v.build_type if v.build_type != null && length(v.build_type) > 0 }
}
output "codebuild_webhooks_filter_group" {
  description = "Map of filter_group values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => v.filter_group if v.filter_group != null && length(v.filter_group) > 0 }
}
output "codebuild_webhooks_manual_creation" {
  description = "Map of manual_creation values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => v.manual_creation if v.manual_creation != null }
}
output "codebuild_webhooks_payload_url" {
  description = "Map of payload_url values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => v.payload_url if v.payload_url != null && length(v.payload_url) > 0 }
}
output "codebuild_webhooks_project_name" {
  description = "Map of project_name values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => v.project_name if v.project_name != null && length(v.project_name) > 0 }
}
output "codebuild_webhooks_pull_request_build_policy" {
  description = "Map of pull_request_build_policy values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => one(v.pull_request_build_policy) if v.pull_request_build_policy != null && length(v.pull_request_build_policy) > 0 }
}
output "codebuild_webhooks_region" {
  description = "Map of region values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => v.region if v.region != null && length(v.region) > 0 }
}
output "codebuild_webhooks_scope_configuration" {
  description = "Map of scope_configuration values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => one(v.scope_configuration) if v.scope_configuration != null && length(v.scope_configuration) > 0 }
}
output "codebuild_webhooks_secret" {
  description = "Map of secret values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => v.secret if v.secret != null && length(v.secret) > 0 }
  sensitive   = true
}
output "codebuild_webhooks_url" {
  description = "Map of url values across all codebuild_webhooks, keyed the same as var.codebuild_webhooks"
  value       = { for k, v in aws_codebuild_webhook.codebuild_webhooks : k => v.url if v.url != null && length(v.url) > 0 }
}

