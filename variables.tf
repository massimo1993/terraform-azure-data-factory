# Environment variables should be used for authentication.
#
# ARM_SUBSCRIPTION_ID
# ARM_CLIENT_ID
# ARM_CLIENT_SECRET
# ARM_TENANT_ID
#
# Reference the Azure Provider documentation for more information.
#
# https://www.terraform.io/docs/providers/azurerm/index.html

variable info {
  type = object({
    project     = string
    environment = string
    sequence    = string
  })

  description = "Info object used to construct naming convention for all resources."
}

variable tags {
  type        = map(string)
  description = "Tags object used to tag resources."
}

variable resource_group {
  type        = string
  description = "Name of the resource group where the data factory will be deployed."
}

variable region {
  type        = string
  description = "Region where all the resources will be created."
}
