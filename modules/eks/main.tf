module "traefik" {
  source = "../nodeport/"

  cluster_info = var.cluster_info
  namespace    = var.namespace

  extra_yaml = concat([templatefile("${path.module}/values.tmpl.yaml", {})], var.extra_yaml)
}
