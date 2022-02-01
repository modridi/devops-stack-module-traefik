data "azurerm_dns_zone" "this" {
  name                = var.cluster_info.base_domain
  resource_group_name = var.resource_group_name
}

data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}

resource "azurerm_dns_cname_record" "wildcard" {
  name                = "*.apps.${var.cluster_info.cluster_name}"
  zone_name           = data.azurerm_dns_zone.this.name
  resource_group_name = data.azurerm_dns_zone.this.resource_group_name
  ttl                 = 300
  record              = "${local.azure_dns_label_name}.${data.azurerm_resource_group.this.location}.cloudapp.azure.com."
}

module "traefik" {
  source = "../"

  cluster_name     = var.cluster_info.cluster_name
  base_domain      = var.cluster_info.base_domain
  argocd_namespace = var.cluster_info.argocd_namespace

  namespace      = var.namespace

  extra_yaml = concat([templatefile("${path.module}/values.tmpl.yaml", {
    azure_dns_label_name = local.azure_dns_label_name
  })], var.extra_yaml)
}
