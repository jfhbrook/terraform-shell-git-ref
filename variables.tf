output "path" {
  description = "The path to the git repository"
  value       = shell_script.git_ref.output.path
}

output "refspec" {
  description = "The git refspec"
  value       = shell_script.git_ref.output.refspec
}


