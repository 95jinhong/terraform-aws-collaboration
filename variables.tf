variable "prefix" {
  default= "dev"
  description = "This prefix will be included in the name of most resources."
}

variable "region" {
  description = "The region where the resources are created."
  default     = "ap-northeast-2"
}

variable "address_space" {
  description = "The address space that is used by the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  default     = "10.0.10.0/24"
}

variable "instance_type" {
  description = "Specifies the AWS instance type."
  default     = "t3.micro"
}

variable "height" {
  default     = "400"
  description = "Image height in pixels."
}

variable "width" {
  default     = "600"
  description = "Image width in pixels."
}

variable "placeholder" {
  default     = "placekitten.com"
  description = "Image-as-a-service URL. Some other fun ones to try are fillmurray.com, placecage.com, placebeard.it, loremflickr.com, baconmockup.com, placeimg.com, placebear.com, placeskull.com, stevensegallery.com, placedog.net"
}

variable "aws_config" {
  default = ["/Users/hong.park/.aws/config"]
  description = "95jinhong aws config file"
}

variable "aws_credentials" {
  default = ["/Users/hong.park/.aws/credentials"]
  description = "95jinhong aws credentials"
}

variable "aws_profile" {
  default = "terraform"
  description = "95jinhong account"
}

variable "environment" {
  type  = "string"
  description = "Define infrastructure's environment"
  default = "dev"

  validation{
    condition = contains(["dev", "qa", "prod"], var.environment)
    error_message = "The enviroment value must be dev, qa, or prod."
  }
}