# Terragrunt config for the environment
locals {
  common_tags = {
    demo = "devops-demo"
  }
}

terraform {
  source = "../../modules//"
}
