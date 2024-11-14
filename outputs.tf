output "path" {
  description = "The path to the git repository"
  value       = shell_script.git_ref.output.path
}

output "refspec" {
  description = "The git refspec"
  value       = shell_script.git_ref.output.refspec
}

output "branch" {
  description = "The branch corresponding to the refspec"
  value       = shell_script.git_remote.output.branch
}

output "sha" {
  description = "The SHA corresponding to the refspec"
  value       = shell_script.git_remote.output.sha
}
