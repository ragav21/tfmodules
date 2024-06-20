
data "azurerm_resource_group" "projectrg" {
    name = var.resource_group_name
  
}


locals {
  saname = "qtm${var.environment}${var.app_prefix}${local.location}sa${var.instance_number}"
  location = var.location == "westus2" ? "wu2" : "scu"

}



resource "azurerm_storage_account" "storeacc" {
  name                      = local.saname
  resource_group_name       = data.azurerm_resource_group.projectrg.name
  location                  = var.location
  account_kind              = "StorageV2"
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  enable_https_traffic_only = true
  is_hns_enabled            = var.hns
  min_tls_version           = "TLS1_2"
  public_network_access_enabled = false
  shared_access_key_enabled = true
  infrastructure_encryption_enabled = var.infra_encryption
  

  blob_properties {
    delete_retention_policy {
      days = 7
    }
    container_delete_retention_policy {
      days = 7
    }
    versioning_enabled = var.enable_versioning
 
  }

  share_properties {
      retention_policy {
    days = 7
  }
    }
  
   
    
}

#--------------------------------------
# Storage Advanced Threat Protection 
#--------------------------------------