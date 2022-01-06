resource "argocd_project" "this" {
  metadata {
    name      = "traefik"
    namespace = var.argocd.namespace
    annotations = {
      "devops-stack.io/argocd_namespace" = var.argocd.namespace
    }
  }
 
  spec {
    description  = "Traefik application project"
    source_repos = ["https://github.com/camptocamp/devops-stack-module-traefik.git"]
 
    destination {
      server    = "https://kubernetes.default.svc"
      namespace = var.namespace
    }
 
    orphaned_resources {
      warn = true
    }

    cluster_resource_whitelist {
      group = "*"
      kind  = "*"
    }
  }
}

resource "argocd_application" "this" {
  metadata {
    name      = "traefik"
    namespace = var.argocd.namespace
  }

  spec {
    project = argocd_project.this.metadata.0.name

    source {
      repo_url        = "https://github.com/camptocamp/devops-stack-module-traefik.git"
      path            = "charts/traefik"
      target_revision = "main"
      helm {
        values = templatefile("${path.module}/values.tmpl.yaml", {
          cluster_name   = var.cluster_name,
          base_domain    = var.base_domain,
        })
      }
    }

    destination {
      server    = "https://kubernetes.default.svc"
      namespace = var.namespace
    }

    sync_policy {
      automated = {
        prune     = true
        self_heal = true
      }

      sync_options = [
        "CreateNamespace=true"
      ]
    }
  }
}
