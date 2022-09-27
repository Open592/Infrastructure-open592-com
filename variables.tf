variable "ROOT_DOMAIN" {
  description = "Root domain for the project. (Example: open592.com)"
  type        = string
}

variable "AWS_ACCESS_KEY" {
  description = "Access key for AWS. This should NEVER be stored locally"
  type        = string
}

variable "AWS_SECRET_KEY" {
  description = "Secret key for AWS. This should NEVER be stored locally"
  type        = string
}

variable "AWS_REGION" {
  default     = "us-west-2"
  description = "AWS region. (Defaults to 'us-west-2')"
  type        = string
}

variable "PROTON_MAIL_VERIFICATION" {
  description = "Proton mail verification code."
  type        = string
}

variable "PROTON_MAIL_DOMAIN_KEY_1" {
  description = "DKIM public key 1"
  type        = string
}

variable "PROTON_MAIL_DOMAIN_KEY_2" {
  description = "DKIM public key 2"
  type        = string
}

variable "PROTON_MAIL_DOMAIN_KEY_3" {
  description = "DKIM public key 3"
  type        = string
}
