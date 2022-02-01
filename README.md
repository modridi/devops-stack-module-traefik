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

- Description: Configure Traefik to be set behind an AWS NLB.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//modules/eks`


### AKS

- Description: Configure Traefik for Azure AKS.
- Source: `git::https://github.com/camptocamp/devops-stack-module-traefik.git//modules/aks`
- Extra variables:
   - `azure_dns_label_name`
