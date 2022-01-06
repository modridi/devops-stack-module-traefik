#######################
## Standard variables
#######################

variable "cluster_name" {
  type = string
}

variable "base_domain" {
  type = string
}

variable "oidc" {
  type    = any
  default = {}
}

variable "argocd" {
  type = object({
    namespace  = string
  })
}

variable "cluster_issuer" {
  type    = string
  default = "ca-issuer"
}

variable "namespace" {
  type    = string
  default = "traefik"
}

variable "profile" {
  type    = string
  default = "default"
}

variable "values_overrides" {
  type    = map(any)
  default = {}
}

#######################
## Module variables
#######################

