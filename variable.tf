# Location of the Intersight API Secretkey file
variable "secretkey" {
  type = string
}
# Intersight API-Key-ID
variable "apikey" {
  type = string
}

variable "endpoint" {
  type = string
}

variable "organization_name" {
  type = string
}

variable "object_type" {
  type = string
}

variable "ntp_servers" {
  type = list(string)
}

variable "enabled" {
  type = bool
}

variable "description" {
  type = string
}