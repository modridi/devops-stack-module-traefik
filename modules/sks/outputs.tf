output "nlb_ip_address" {
  value = exoscale_nlb.this.ip_address
}

output "info" {
  value = module.traefik.cluster_info
}
