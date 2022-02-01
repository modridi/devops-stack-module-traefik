locals {
  azure_dns_label_name = format("%s-%s", var.cluster_info.cluster_name, replace(var.cluster_info.base_domain, ".", "-"))
}
