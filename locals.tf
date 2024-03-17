locals {
  github_org           = "brainstation-au"
  repository           = ""
  aws_region           = "ap-southeast-2"
  aws_account_id       = data.aws_caller_identity.current.account_id
  aws_organization_id  = data.aws_organizations_organization.brainstation.id
  aws_organization_arn = data.aws_organizations_organization.brainstation.arn
  tags = {
    Terraform  = "true"
    GithubOrg  = local.github_org
    Repository = local.repository
  }
}
