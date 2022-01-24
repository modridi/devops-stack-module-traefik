locals {
  azure_dns_label_name = format("%s-%s", var.cluster_name, replace(var.base_domain, ".", "-"))
}
