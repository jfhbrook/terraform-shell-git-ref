module {
  name        = "git-ref"
  provider    = "shell"
  version     = "1.0.0"
  description = "Read the name and SHA of a git ref"

  scripts {
    format = [
      "terraform fmt -recursive"
    ]

    lint = [
      "tflint --recursive",
      "shellcheck ./lifecycle/*.sh"
    ]
  }
}
