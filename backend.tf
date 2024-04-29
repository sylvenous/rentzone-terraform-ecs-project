# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "silva-demo-terraform-remote-state"
    key            = "rentzone-ecs/terraform.tfstate"
    region         = "us-east-1"
    profile        = "demo-terraform"
    dynamodb_table = "silva-terraform-state-lock"
  }
}