#variable "ns" {
#  description = "Namespace environment"
#  type        = string
#}

#deployment
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


variable "memo-req" {
 type	 = string
}



variable "cpu-limit" {
 type    = string
}

variable "memo-limit" {
 type   = string
}


variable "svc-app" {
 type = string
}


variable "tarport" {
 type = string
}

variable "typelb" {
 type = string
}


variable "selectapp" {
 type = string
}
