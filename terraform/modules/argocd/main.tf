resource "kubernetes_namespace" "argocd" {

  metadata {
    name = "argocd"
  }
}

resource "helm_release" "argocd" {

  name = "argocd"

  namespace = "argocd"

  repository = "https://argoproj.github.io/argo-helm"

  chart = "argo-cd"

  create_namespace = true
}

variable "cluster_name" {
  type = string
}

output "argocd_release" {
  value = helm_release.argocd.name
}