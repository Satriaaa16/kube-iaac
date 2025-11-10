resource "kubernetes_service" "tfvars-service" {
 metadata {
  name =  var.svc-app
 }
 spec {
  selector = {
    app = var.selectapp
  }
  port {
   port = var.port
   target_port = var.tarport
  }
  type = var.typelb
 }
}
