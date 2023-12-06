resource "azurerm_app_service_plan" "app_plan20240" {
  name                = "app_plan20240"
  location            = azurerm_resource_group.app_grp.location
  resource_group_name = azurerm_resource_group.app_grp.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
  resource "azurerm_app_service" "webapp" {
  name                = "webapp411000"
  location            = azurerm_resource_group.app_grp.location
  resource_group_name = azurerm_resource_group.app_grp.name
  app_service_plan_id = azurerm_app_service_plan.app_plan20240.id
}