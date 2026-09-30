provider "aws" {
  region     = "ap-south-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

# Sydney - Aliased Provider
provider "aws" {
  alias      = "sydney"
  region     = "ap-southeast-2"
  access_key = var.access_key
  secret_key = var.secret_key
}