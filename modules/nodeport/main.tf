module "traefik" {
  source = "../"

  cluster_info = var.cluster_info

  namespace      = var.namespace

  extra_yaml = concat([templatefile("${path.module}/values.yaml", {})], var.extra_yaml)
}
