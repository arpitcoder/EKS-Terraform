provider "kubernetes" {
  host                   = var.cluster_endpoint
  cluster_ca_certificate = base64decode(var.cluster_ca_certificate)
  token                  = var.token
}

resource "kubernetes_namespace" "backend" {
  metadata {
    name = "backend"
  }
}

resource "kubernetes_namespace" "web" {
  metadata {
    name = "web"
  }
}

resource "kubernetes_namespace" "promstack" {
  metadata {
    name = "promstack"
  }
}

resource "kubernetes_namespace" "nginx-ingress" {
  metadata {
    name = "nginx-ingress"
  }
}
