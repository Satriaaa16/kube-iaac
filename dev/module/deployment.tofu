resource "kubernetes_deployment" "tfvars-input" {
  metadata {
    name = var.kubedeploy
    labels = {
      app = var.applabel
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        app = var.applabel
      }
    }

    template {
      metadata {
        labels = {
          app = var.applabel
        }
      }

      spec {
        container {
          image = var.img-app
          name  = var.img-app

          resources {
            limits = {
              cpu    = var.cpu-limit
              memory = var.memo-limit
            }
            requests = {
              cpu    = var.cpu-req
              memory = var.memo-req
            }
          }

          liveness_probe {
            http_get {
              path = "/"
              port = var.port

              http_header {
                name  = "X-Custom-Header"
                value = "Awesome"
              }
            }

            initial_delay_seconds = 3
            period_seconds        = 3
          }
        }
      }
    }
  }
}
