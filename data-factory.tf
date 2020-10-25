locals {
  env = title(substr(var.info.environment, 0, 1))

  name   = module.naming.data_factory.name
  length = module.naming.data_factory.max_length - 4
  prefix = substr(local.name, 0, local.length)

  df_name = format("%s%s%03d", local.prefix, local.env, var.info.sequence)
}

resource azurerm_data_factory data_factory {
  name = replace(local.df_name, "-", "")

  resource_group_name = var.resource_group
  location            = var.region

  identity {
    type = "SystemAssigned"
  }

  tags = local.tags
}
