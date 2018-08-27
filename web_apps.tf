resource "random_id" "server" {
  keepers = {
    azi_id = 1
  }

  byte_length = 6
}
resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}

resource "azurerm_app_service" "webapp1" {
  name                = "web-app1-${random_id.server.hex}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = "${azurerm_app_service_plan.appserviceplan1.id}"
}

resource "azurerm_app_service" "webapp2" {
  name                = "web-app2-${random_id.server.hex}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = "${azurerm_app_service_plan.appserviceplan1.id}"
}

resource "azurerm_app_service" "webapp3" {
  name                = "web-app3-${random_id.server.hex}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group}"
  app_service_plan_id = "${azurerm_app_service_plan.appserviceplan1.id}"
}