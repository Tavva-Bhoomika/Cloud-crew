terraform {
  backend "s3" {
    bucket         = "cloud-crew-terraform-state-bucket"
    key            = "terraform/state.tfstate"
    region         = "ap-south-1"
  }
}
