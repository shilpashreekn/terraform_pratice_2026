provider "aws" {
  alias = "sydney"
    region = var.aws_region_sydney

}

provider "aws" {
  alias = "mumbai"
    region = var.aws_region_mumbai

}