resource "github_repository" "repo" {
  allow_auto_merge       = var.auto_merge
  allow_merge_commit     = var.merge_commit
  allow_rebase_merge     = var.rebase_merge
  allow_squash_merge     = var.squash_merge
  auto_init              = true
  delete_branch_on_merge = true
  description            = var.description
  gitignore_template     = var.gitignore_template

  is_template            = false
  license_template       = var.license_template
  name                   = var.name
  topics                 = var.topics
  visibility             = var.visibility
  vulnerability_alerts   = var.vulnerability_alerts
}

resource "github_branch_protection" "repo" {
  allows_deletions                = false
  allows_force_pushes             = false
  count                           = try(var.has_branch_protection ? 1 : 0, 1)
  enforce_admins                  = true
  pattern                         = "main"
  repository_id                   = github_repository.repo.node_id
  require_conversation_resolution = true
  require_signed_commits          = false
  required_linear_history         = true


  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 0
  }
}

moved {
  from = github_branch_protection.repo
  to   = github_branch_protection.repo[0]
}