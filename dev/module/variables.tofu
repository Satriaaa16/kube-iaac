#variable "ns" {
# type = string
# description = "awalan tes var"
#}


variable "kubedeploy" {
  type = string
  default = "nama aplikasi"
}


variable "labels" {
  type = string
  default = "aplikasi point"
}

variable "applabel" {
 type = string
}

variable "img-app" {
  default = "image aplikasi"
}


variable "port" {
 default = "number port"
}

# request
variable "cpu-req" {
 type = string
}

variable "memo-req" {
 type = string
}

# limit

variable "cpu-limit" {
 type = string
}

variable "memo-limit" {
 type = string
}

## svc

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
