variable "cluster_endpoint" {
  description = "The EKS cluster endpoint"
  type        = string
}

variable "cluster_ca_certificate" {
  description = "The CA certificate for the EKS cluster"
  type        = string
}

variable "token" {
  description = "The authentication token for the EKS cluster"
  type        = string
}

variable "namespace" {
  description = "The Kubernetes namespace to deploy the NGINX Ingress Controller"
  type        = string
  default     = "nginx-ingress"
}
