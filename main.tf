module "secrets-manager" {
  source  = "terraform-aws-modules/secrets-manager/aws"
  version = "1.1.2"

  create                  = var.create
  name                    = var.secret_name
  description             = var.description
  tags                    = var.tags
  recovery_window_in_days = var.recovery_window_in_days

}
