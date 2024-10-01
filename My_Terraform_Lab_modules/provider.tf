provider "aws" {
  region = "us-east-1" 
}

terraform {
  backend "s3" {
    name    = "yat225-mostafa-tfstate"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    dynamodb_table = "yat225-mostafa-lock-state"
  }
  
}
