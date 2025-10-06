#output "kubernetes_namespace" {
#  description = "hasil ns"
#  value       = kubernetes_namespace.namespace-input-tfvars
#
#}

output "kubernetes_deployment" {
 description = "hasil deployment"
 value	     = kubernetes_deployment.tfvars-input
}
