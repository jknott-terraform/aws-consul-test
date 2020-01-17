variable "ami" {
  type = map(string)
  description = "A map of AMIs"
  default = {}
}


variable "instance_type" {
  type = string
  description = "The instance type"
  default = "t2.micro"
}

variable "region" {
  type = string
  description = "The AWS region"
  default = "us-east-1"
}


variable "key_name" {
  type = string
  description = "Name of AWS Key to use"
}

variable "key_path" {
  description = "The location of the AWS key file to use for connections."
  default = "/home/user/.ssh/jknott.pem"
}

variable "owner_tag" {
  type = list(string)
  default = ["team1", "team2"]
}


variable "prefix" {
  default = "engineering"
  description = "The name of our department"
}

variable "environment" {
  default = "development"
  description = "The name of our environment"
}

variable "token" {
}

variable "encryption_key" {
}

variable "vpc_id" {
  default = "vpc-0bd1bef4625131584" 
}

variable "public_subnet_id" {
  default = "subnet-0354bf123c3139366" 
}

variable "private_key_path" {
  default = "/home/user/.ssh/jknott.pem"
}
