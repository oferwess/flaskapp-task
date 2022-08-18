#####################################
## AWS Provider Module - Variables ##
#####################################

# AWS connection & authentication

variable "aws_access_key" {
  type = string
  description = "AWS access key"
}

variable "aws_secret_key" {
  type = string
  description = "AWS secret key"
}

variable "aws_region" {
  type = string
  description = "AWS region"
}

##############################################
## Network Single AZ Public Only - Variables #
##############################################

# AWS AZ
variable "aws_az" {
  type        = string
  description = "AWS AZ"
  default     = "eu-west-1c"
}

# VPC Variables
variable "vpc_cidr" {
  type        = string
  description = "CIDR for the VPC"
  default     = "10.1.64.0/18"
}

# Subnet Variables
variable "public_subnet_cidr" {
  type        = string
  description = "CIDR for the public subnet"
  default     = "10.1.64.0/24"
}

####################################
## Application Module - Variables ##
####################################

# Application definition

variable "app_name" {
  type        = string
  description = "Application name"
}

variable "app_environment" {
  type        = string
  description = "Application environment"
}

########################################
## Virtual Machine Module - Variables ##
########################################
variable "instance_count" {
  default = 2
}

variable "aws_eip_association" {
  default = 2
}

variable "aws_eip" {
  default = 2
}

variable "linux_instance_type" {
  type        = string
  description = "EC2 instance type for Linux Server"
  default     = "t2.micro"
}

variable "linux_associate_public_ip_address" {
  type        = bool
  description = "Associate a public IP address to the EC2 instance"
  default     = true
}

variable "linux_root_volume_size" {
  type        = number
  description = "Volume size of root volume of Linux Server"
}

variable "linux_root_volume_type" {
  type        = string
  description = "Volume type of root volume of Linux Server. Can be standard, gp3, gp2, io1, sc1 or st1"
  default     = "gp2"
}


