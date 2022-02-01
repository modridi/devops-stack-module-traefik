variable "zone" {
  description = "The name of the zone to deploy the SKS cluster into."
  type        = string
}

variable "router_pool_id" {
  description = "SKS Node Pool ID for router nodes"
  type        = string
}

variable "cluster_security_group_id" {
  description = "SKS Cluster security group ID"
  type        = string
}
