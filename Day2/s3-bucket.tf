terraform {
  backend "s3" {
    bucket = "day5-public-bucket"
    key= "terraform.tfstate"
    region = var.region
    dynamodb_table = "state-lock-terraform"    
  }
}