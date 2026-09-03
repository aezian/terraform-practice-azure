variable  "resource_group_name" {
description = "this is the name of resource group"
type = string
}

variable  "location" {
description = "this is the location of resource group"
type = string
}

variable "tags" {
description ="common tags for Azure resources"
type =map(string)
}

variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
}

variable "container_registry_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "aks_cluster_name" {
  description = "Name of the Azure Kubernetes Service Cluster"
  type	      = string
}

variable "aks_dns_prefix" {
  description = "DNS Prefix for the AKS Cluster"
  type = string
}

variable "aks_node_count" {
  description = "Number of Worker nodes in the AKS default node pool"
  type = number
}

variable "aks_vm_size" {
  description = "VM size for the AKS worker nodes"
  type = string
}

variable "aks_location" {
  description = "Azure region for the AKS cluster"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Azure Virtual Network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the Azure Virtual Network"
  type        = list(string)
}

variable "aks_subnet_name" {
  description = "Name of the AKS subnet"
  type        = string
}

variable "aks_subnet_address_prefixes" {
  description = "Address prefixes for the AKS subnet"
  type        = list(string)
}
