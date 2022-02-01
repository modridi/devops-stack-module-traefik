# devops-stack-module-traefik

A [DevOps Stack](https://devops-stack.io) module to deploy and configure [Traefik](https://traefik.io/).


## Usage

```hcl
module "ingress" {
  source = "git::https://github.com/camptocamp/devops-stack-module-traefik.git//modules"

  cluster_info     = module.cluster.info
}
```

## Submodules

### Default

- Description: Simple installation and configuration of Traefik as Ingress Controller.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//modules`


### EKS

- Description: Configure Traefik for EKS using a NodePort setup.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//modules/eks`


### SKS

- Description: Configure Traefik for SKS using a NodePort setup.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//modules/sks`


### NodePort

- Description: Configure Traefik to be set behind an L4 static load balancer.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//modules/nodeport`


### AKS

- Description: Configure Traefik for Azure AKS.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//modules/aks`
- Extra variables:
   - `azure_dns_label_name`
