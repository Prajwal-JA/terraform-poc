provider "azurerm" {
  version = ">=2.6"


  features {}
}

#
# - Deploy a Vnet in Azure
#


module "vnet" {
  source               = "github.com/Prajwal-JA/terraform-poc.git"
  resource_group_name  = "Collabnix-RG"
  location             = "East US"
  virtual_network_name = "Collabnix-Vnet"
  vnet_address_range   = "10.0.0.0/16"
  subnet_name          = "Webserver-Subnet"
  subnet_address_range = "10.0.1.0/24"

}