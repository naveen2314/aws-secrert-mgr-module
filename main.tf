module "secrets-manager" {
  source  = "terraform-aws-modules/secrets-manager/aws"
  version = "1.1.2"
}

################################################################################
# Secret
################################################################################

resource "aws_secretsmanager_secret" "this" {
  count = var.create ? 1 : 0

  description                    = var.description
  force_overwrite_replica_secret = var.force_overwrite_replica_secret
  kms_key_id                     = var.kms_key_id
  name                           = var.name
  name_prefix                    = var.name_prefix
  recovery_window_in_days        = var.recovery_window_in_days

  tags = var.tags
}
