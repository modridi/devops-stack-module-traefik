locals {
  default_yaml = [ templatefile("${path.module}/values.tmpl.yaml", {
    cluster_info = var.cluster_info,
  }) ]
  all_yaml = concat(local.default_yaml, var.extra_yaml)
}
