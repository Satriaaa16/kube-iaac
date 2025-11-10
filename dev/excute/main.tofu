module "config-utama" {
 source = "../module/"
# ns	  = var.ns
 
 kubedeploy = var.kubedeploy
   labels = var.labels
   img-app= var.img-app
   port   = var.port
   cpu-req= var.cpu-req
   memo-req= var.memo-req
   cpu-limit= var.cpu-limit
   memo-limit=var.memo-limit

 # service

 svc-app = var.svc-app
   selectapp = var.selectapp
   tarport   = var.tarport
   typelb    = var.typelb
}
