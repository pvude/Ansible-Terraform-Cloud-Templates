/* Configure Azure Provider and declare all the Variables that will be used in Terraform configurations */
provider "azurerm" {
  subscription_id = var.subscription_id
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
  version = "1.37.0"
}

variable "subscription_id" {
  description = "Enter Subscription ID for provisioning resources in Azure"
}

variable "client_id" {
  description = "Enter Client ID for Application created in Azure AD"
}

variable "client_secret" {
  description = "Enter Client secret for Application in Azure AD"
}

variable "tenant_id" {
  description = "Enter Tenant ID / Directory ID of your Azure AD. Run Get-AzureSubscription to know your Tenant ID"
}

variable "location" {
  description = "The default Azure region for the resource provisioning"
  default = "West Europe"
}
variable "azure_rg_cidr" {
    description = "Azure Ressource Group CIDR"
    default = "10.10.0.0/16"
}

variable "public_subnet1_cidr" {
  description = "First public subnet IP range"
  default = "10.10.11.0/24"
}

variable "public_subnet2_cidr" {
  description = "2nd public subnet IP range"
  default = "10.10.12.0/24"
}

variable "private_subnet1_cidr" {
  description = "2nd public subnet IP range"
  default = "10.10.41.0/24"
}

variable "private_subnet2_cidr" {
  description = "2nd public subnet IP range"
  default = "10.10.42.0/24"
}
variable "azure_region" {
  type = "string"
  default = "West Europe"
}

variable "owner" {
  type = "string"
}

