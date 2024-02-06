variable "enabled" {
  description = "Whether or not to create the resource."
  type        = bool
  default     = true
}

variable "domain" {
  description = "The name of the domain."
  type        = string
}

variable "encryption_key" {
  description = "The encryption key for the domain."
  type        = string
  default     = null
}

variable "encryption_key_alias" {
  description = "The encryption key alias for the domain."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "policy_document" {
  description = "The policy document."
  type        = string
  default     = null
}

variable "repositories" {
  description = "A list of repositories to create in the domain."
  type = map(object({
    description = string
    external_connections = list(object({
      external_connection_name = string
      package_format           = string
      status                   = string
    }))
    upstreams = list(object({
      repository_name = string
    }))
    tags            = map(string)
    policy_document = string
  }))
  default = null
}
