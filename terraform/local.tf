locals {
  default_map = yamldecode(
    templatefile("${path.module}/profiles/default.yaml", {
      cluster_name = var.cluster_name,
      base_domain  = var.base_domain,
    }))
  profile_map = yamldecode(
    templatefile("${path.module}/profiles/${var.profile}.yaml", {
      cluster_name = var.cluster_name,
      base_domain  = var.base_domain,
    }))

  values_map = merge(local.default_map, local.profile_map, var.values_overrides)
  values_yaml = yamlencode(local.values_map)
}
