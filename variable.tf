variable "create" {
  description = "Whether to create the secret"
  type        = bool
  default     = true
}

variable "secret_name" {
  description = "The name of the secret"
  type        = string
}

variable "description" {
  description = "The description of the secret"
  type        = string
  default     = null
}

variable "kms_key_id" {
  description = "The ARN or Id of the AWS KMS key to be used to encrypt the secret values"
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to assign to the secret"
  type        = map(string)
  default     = {}
}

variable "recovery_window_in_days" {
  description = "The number of days that AWS Secrets Manager waits before it can delete the secret"
  type        = number
  default     = 30
}

variable "secret_string" {
  description = "The value of the secret"
  type        = string
  default     = ""
}
