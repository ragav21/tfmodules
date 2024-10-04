module "Storage" {

    source = "git::https://github.com/ragav21/tfmodules.git//Modules/Storage/storage-account?ref=main"

     hns = false
 infra_encryption = false
 location = "westus"
 resource_group_name = "raghavan-rg"
instance_number = "001"
enable_versioning = true
app_prefix = "jm"
environment = "dev" 



}

