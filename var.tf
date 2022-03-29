variable "resource_group_name" {
    description =   "Name of the resource group"
    type        =   string
}

variable "location" {
    description =   "Location of the resource group"
    type        =   string
}

# Vnet Variables

variable "virtual_network_name" {
    description =   "Name of the virtual network"
    type        =   string
}

variable "vnet_address_range" {
    description =   "IP Range of the virtual network"
    type        =   string
}

# Subnet Variables

variable "subnet_name" {
    description =   "Name of the subnet"
    type        =   string
}

variable "subnet_address_range" {
    description =   "IP Range of the virtual network"
    type        =   string
}

variable "subscriptionID" {
    type = string
}

variable "clientID" {
    type = string
}

variable "clientsecret" {
    type = string
}

variable "tenantID" {
    type = string
  
}