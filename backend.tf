terraform {
  backend "azurerm" {
    storage_account_name = "storageacmerara"
    container_name       = "terraform"
    key                  = "prod.terraform.tfstate"

    # rather than defining this inline, the SAS Token can also be sourced
    # from an Environment Variable - more information is available below.
    sas_token = "?sv=2020-02-10&ss=bfqt&srt=co&sp=rwdlacupx&se=2021-04-21T22:55:30Z&st=2021-04-21T14:55:30Z&spr=https,http&sig=CTYIESrqzM3Rb1%2FA96U%2FvYBY6qxeKBBvW74bSCGsAD8%3D"
  }
}
