module "traefik" {
  source = "../"

  cluster_name     = var.cluster_name
  base_domain      = var.base_domain
  argocd_namespace = var.argocd_namespace

  namespace      = var.namespace
  profiles       = var.profiles

  extra_yaml = [ templatefile("${path.module}/values.yaml", {
  }) ]
}
