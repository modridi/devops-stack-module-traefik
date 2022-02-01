#######################
## Standard variables
#######################

variable "cluster_info" {
  type = object({
    cluster_name     = string
    base_domain      = string
    argocd_namespace = string
  })
}

variable "oidc" {
  type    = any
  default = {}
}

variable "cluster_issuer" {
  type    = string
  default = "ca-issuer"
}

variable "namespace" {
  type    = string
  default = "traefik"
}

variable "extra_yaml" {
  type    = list(string)
  default = []
}

#######################
## Module variables
#######################
