data "shell_script" "git_ref" {
  lifecycle_commands {
    read = file("${path.module}/lifecycle/read.sh")
  }

  environment = {
    refspec = var.refspec
  }

  interpreter       = ["/usr/bin/env", "bash", "-c"]
  working_directory = var.path
}
