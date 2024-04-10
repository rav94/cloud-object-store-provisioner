# terraform {
#     required_version = ">= 0.13"
#     backend "remote" {
#         hostname     = "app.terraform.io"
#         organization = "ravnf-personal"
#         workspaces {
#             name = "cloud-object-storage-gcp"
#         }
#     }
# }

module "gcp_cloud_storage" {
    source = "github.com/rav94/demo-terraform-modules//gcp_cloud_storage?ref=main"  
    
    project_id  = var.project_id
    region = var.region
    bucket_name = var.bucket_name
    location    = "US"
    labels = {
        name        = "cloud-native-sl-bucket"
        environment = "production"
    }
}