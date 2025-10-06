#variable "ns" {
#  description = "Namespace environment"
#  type        = string
#}


variable "kubedeploy" {
  type = string
  default = "nama aplikasi"
}


variable "labels" {
  type = string
  default = "aplikasi point"
}


variable "img-app" {
  default = "image aplikasi"
}


variable "port" {
 default = "number port"
}

variable "cpu-req" {
 type    = string
}
