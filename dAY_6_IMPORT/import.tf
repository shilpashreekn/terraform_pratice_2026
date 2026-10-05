provider "aws" {
  region = "ap-southeast-2"
}

import  {
  id = "i-0e7f1b8c9e3f4a5b6"
# destination resource to import into aws_instance.example
  to = aws_instance.example 
}