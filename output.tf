output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "k8s_cluster_name" {
  value = azurerm_kubernetes_cluster.k8s.name
}

output "client_certificate" {
   value = azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate
   sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.k8s.kube_config_raw
  sensitive = true
}