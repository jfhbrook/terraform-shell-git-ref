module = {
  description = "Read the name and SHA of a git ref"
  git = {
    main_branch = "main"
  }
  name      = "git-ref"
  namespace = "jfhbrook"
  provider  = "shell"
  scripts = {
    format = ["terraform fmt -recursive"]
    lint   = ["tflint --recursive", "shellcheck ./lifecycle/*.sh"]
  }
  version = "1.0.2"
}
