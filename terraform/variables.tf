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
  type = any
}

variable "kubernetes" {
  type = any
}

variable "argocd" {
  type = object({
    server     = string
    auth_token = string
    namespace  = string
  })
}

variable "cluster_issuer" {
  type = string
}

variable "namespace" {
  type    = string
  default = "traefik"

}

#######################
## Module variables
#######################

