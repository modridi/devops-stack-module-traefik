locals {
  base_domain = coalesce(var.cluster_info.base_domain, format("%s.nip.io", replace(exoscale_nlb.this.ip_address, ".", "-")))

  cluster_info = merge(var.cluster_info, {
    base_domain = local.base_domain,
  })
}
