output "path" {
  description = "The path to the git repository"
  value       = data.shell_script.git_ref.output.path
}

output "refspec" {
  description = "The git refspec"
  value       = var.refspec
}

output "branch" {
  description = "The branch corresponding to the refspec"
  value       = data.shell_script.git_ref.output.branch
}

output "sha" {
  description = "The SHA corresponding to the refspec"
  value       = data.shell_script.git_ref.output.sha
}
