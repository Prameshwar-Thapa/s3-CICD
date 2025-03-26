resource "random_pet" "suffix" {}

resource "aws_s3_bucket" "bucket" {
    bucket = "${var.bucket_name_prefix}-${random_pet.suffix.id}"
    

    tags = local.common_tags
  
}

locals {
  common_tags = {
    Project     ="Terraform S3 Lab"
    Environment = "Developmenet"
    owner     = "Prameshwar"
  }
}