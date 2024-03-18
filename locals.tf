locals {
  github_org           = var.github_repository_owner
  repository           = split("/", var.github_repository)[1]
  aws_region           = "ap-southeast-2"
  aws_account_id       = data.aws_caller_identity.current.account_id
  aws_organization_id  = data.aws_organizations_organization.brainstation.id
  aws_organization_arn = data.aws_organizations_organization.brainstation.arn
  tags = {
    Terraform  = "true"
    GithubOrg  = local.github_org
    GithubRepo = local.repository
  }
}
