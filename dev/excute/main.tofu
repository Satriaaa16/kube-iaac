module "config-utama" {
 source = "../module/"
# ns	  = var.ns
 
 kubedeploy = var.kubedeploy
   labels = var.labels
   img-app= var.img-app
   port   = var.port
   cpu-req= var.cpu-req
   memo-req= var.memo-req
}
