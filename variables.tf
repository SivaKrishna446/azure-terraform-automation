variable "resource_group_name" {
    default = "k8s-production"
    description = "name of the resource group"
}

variable "location" {
  default = "eastus"
  description = "location of the resources we want to provision"
}

variable "k8s_cluster_name" {
  default = "foundation-production"
  description = "The name of the kubernetes cluster"
}

variable "acr_name" {
    default = "sivaeastus"
    description = "The name of the container registry"  
}

