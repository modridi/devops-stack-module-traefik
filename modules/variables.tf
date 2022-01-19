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

variable "argocd_namespace" {
  type = string
}

variable "cluster_issuer" {
  type    = string
  default = "ca-issuer"
}

variable "namespace" {
  type    = string
  default = "traefik"
}

variable "profiles" {
  type    = list(string)
  default = ["default"]
}

#######################
## Module variables
#######################
