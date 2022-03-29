provider "azurerm" {
  version = ">=2.6"
  
  subscription_id = var.subscriptionID
  client_id = var.clientID
  client_secret = var.clientsecret
  tenant_id = var.tenantID


  features {}
}

#
# - Deploy a Vnet in Azure
#


resource "azurerm_resource_group" "rg" {
    name        =   var.resource_group_name
    location    =   var.location
    tags        =   {
        "project"       =   "Collabnix"
        "deployed_with" =   "Terraform"
    }
}

resource "azurerm_virtual_network" "vnet" {
  resource_group_name   =   azurerm_resource_group.rg.name
  name                  =   var.virtual_network_name
  location              =   azurerm_resource_group.rg.location
  address_space         =   [var.vnet_address_range]
   tags                 =   {
        "project"       =   "Collabnix"
        "deployed_with" =   "Terraform"
    }

}
