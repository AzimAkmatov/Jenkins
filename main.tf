# Specify the provider (AWS in this case)
provider "aws" {
  region = "us-east-1"  # Update with your desired region
}

# Define variables
variable "instance_type" {
  description = "The type of EC2 instance to launch"
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI (us-east-1)
}

# Define the EC2 instance resource
resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
}
