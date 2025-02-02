module "traefik" {
  source = "../"

  cluster_name     = var.cluster_name
  base_domain      = var.base_domain
  argocd_namespace = var.argocd_namespace

  target_revision = var.target_revision
  namespace       = var.namespace
  app_autosync    = var.app_autosync

  helm_values = concat(local.helm_values, var.helm_values)

  dependency_ids = var.dependency_ids
}
