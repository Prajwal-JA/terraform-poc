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


resource "azurerm_resource_group" "myrg" {
    name        =   var.RGName
    location    =   var.location

}




