provider "google" {
  credentials = file("/root/terraform-key.json")
  project     = "snappy-bucksaw-416902"
  region      = "us-central1" # Set your desired region
}


module "vpc" {
  source     = "/root/labs/vpc"
  project_id = "snappy-bucksaw-416902"
  vpc_name   = "modulevpc"
  vpc_cidr   = "10.0.0.0/24"
  region     = "us-central1"
}
