resource "helm_release" "alb_controller" {

  name = "aws-load-balancer-controller"

  namespace = "kube-system"

  repository = "https://aws.github.io/eks-charts"

  chart = "aws-load-balancer-controller"

  set {
    name  = "clusterName"
    value = var.cluster_name
  }

  set {
    name  = "region"
    value = "us-east-1"
  }
}