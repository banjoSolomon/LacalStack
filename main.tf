
provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    ec2 = "http://localstack:4566"
  }
}

resource "aws_instance" "simulated_ec2" {
  ami                    = "ami-12345678"
  instance_type          = "t2.micro"
  user_data              = file("${path.module}/user_data.sh")

  tags = {
    Name = "SimulatedEC2"
  }
}
