resource "kubernetes_deployment" "tfvars-input" {
  metadata {
    name = var.kubedeploy
    labels = {
      test = "MyExampleApp"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        test = "MyExampleApp"
      }
    }

    template {
      metadata {
        labels = {
          test = "MyExampleApp"
        }
      }

      spec {
        container {
          image = var.img-app
          name  = var.img-app

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = var.cpu-req
              memory = "50Mi"
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
