variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "amis" {
    description = "AMIs by region"
    default = {
        ap-south-1 = "ami-97785bed" # ubuntu 14.04 LTS
		ap-south-2 = "ami-f63b1193" # ubuntu 14.04 LTS
		ap-south-1 = "ami-824c4ee2" # ubuntu 14.04 LTS
		ap-south-2 = "ami-f2d3638a" # ubuntu 14.04 LTS
    }
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"  # Example CIDR block for a VPC
}

variable "vpc_name" {
  default = "my-vpc"  # Example VPC name
}

variable "IGW_name" {
  default = "my-igw"  # Example Internet Gateway name
}

variable "key_name" {
  default = "my-key"  # Example key name for EC2 instances
}

variable "public_subnet1_cidr" {
  default = "10.0.1.0/24"  # Example CIDR block for the first public subnet
}

variable "public_subnet2_cidr" {
  default = "10.0.2.0/24"  # Example CIDR block for the second public subnet
}

variable "public_subnet3_cidr" {
  default = "10.0.3.0/24"  # Example CIDR block for the third public subnet
}

variable "private_subnet_cidr" {
  default = "10.0.4.0/24"  # Example CIDR block for the private subnet
}

variable "public_subnet1_name" {
  default = "public-subnet-1"  # Example name for the first public subnet
}

variable "public_subnet2_name" {
  default = "public-subnet-2"  # Example name for the second public subnet
}

variable "public_subnet3_name" {
  default = "public-subnet-3"  # Example name for the third public subnet
}

variable "private_subnet_name" {
  default = "private-subnet"  # Example name for the private subnet
}

variable "Main_Routing_Table" {
  default = "main-routing-table"  # Example name for the main routing table
}


variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type = list(string)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1c"]
}

variable "environment" { default = "dev" }

variable "instance_type" {
  type = map(string)
  default = {
    dev = "t2.nano"
    test = "t2.micro"
    prod = "t2.medium"
  }
}
