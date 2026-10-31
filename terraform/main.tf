
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_amplify_app" "careerpilot" {
  name       = "CareerPilot-Frontend"
  repository = "https://github.com/technical-sketch/CareerPilot-Frontend"

  custom_rule {
    source = "/<*>"
    target = "/index.html"
    status = "404-200"
  }
}
