locals {
  repository = split("/", var.github_repository)[1]
  tags = {
    Terraform  = "true"
    GithubOrg  = var.github_repository_owner
    GithubRepo = local.repository
  }
}
