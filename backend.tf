terraform {
  backend "azurerm" {
    resource_group_name  = "ehsan-dev-rg"
    storage_account_name = "ehsandevstore786"
    container_name       = "tfstate"
    key                  = "terraform-practice.tfstate"
  }
}
