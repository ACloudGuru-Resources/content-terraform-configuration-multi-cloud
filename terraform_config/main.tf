## AWS
module "aws" {
  source  = "./modules/aws"

  count   = var.enable_aws ? 1 : 0

}

## Azure
module "azure" {
  source  = "./modules/azure"

  count = var.enable_azure ? 1 : 0

}