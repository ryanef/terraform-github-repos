output "name" {
  value       = github_repository.repo.full_name
}

output "git_clone_url" {
  value       = github_repository.repo.git_clone_url
}



output "repo_id" {
  value       = github_repository.repo.id
}
