terraform {
  required_providers {
    azurerm ={
    source  = "hashicorp/azurerm"
    version = "=3.0.0"
    }
    kubernetes ={
      source  = "hashicorp/kubernetes"
      version = "2.16.1"
    }
  }
}
provider "azurerm" {
  features{}
}
provider "kubernetes" {
  config_path = "~/.kube/config"
}