terraform {
    required_version = ">= 0.13"
    backend "remote" {
        hostname     = "app.terraform.io"
        organization = "ravnf-personal"
        workspaces {
            name = "cloud-object-storage-aws"
        }
    }
}

module "aws_s3_bucket" {
    source = "github.com/rav94/demo-terraform-modules//aws_s3_bucket?ref=main"

    region      = var.region
    bucket_name = var.bucket_name
    tags        = {
        Name        = "cloud-native-sl-bucket"
        Environment = "Production"
    }
}

