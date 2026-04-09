variable "region" {
  description = "AWS Region"
  default     = "af-south-1"
}

# AMI per environment
variable "ami_ids" {
  description = "AMI IDs for each workspace"
  type        = map(string)

  default = {
    dev  = "ami-090ef0fd6549bfb96"
    test = "ami-090ef0fd6549bfb96"
    prod = "ami-090ef0fd6549bfb96"
  }
}

# Instance type per environment
variable "instance_type" {
  type = map(string)

  default = {
    dev  = "t3.micro"
    test = "t3.micro"
    prod = "t3.large"
  }
}

# CIDR blocks
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  type = list(string)

  default = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

# Availability zones
variable "azs" {
  type = list(string)

  default = [
    "af-south-1a",
    "af-south-1b"
  ]
}