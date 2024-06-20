module "Storage" {
    source = "../Modules/Storage/storage-account"
     hns = false
 infra_encryption = false
 location = "westus"
 resource_group_name = "raghavan-rg"
instance_number = "001"
enable_versioning = true
app_prefix = "jm"
environment = "dev"
    

}