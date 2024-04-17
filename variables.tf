variable "VPC_CIDR" {
  type = string
  description = "CIDR block of VPC"
  default = "10.10.0.0/16"
}
variable "PUBLIC_SUBNETS_CONFIGS_01" {
  type = object({
    cidr_block = string
    auto_assign_public_ip = bool
    tags = object({
      Name = string
      By = string
      Terraform = bool
    })
  })  
  description = "Configs of Public Subnet"
  default = {
    cidr_block  = "10.10.1.0/24",
    auto_assign_public_ip = true
    tags = {
      Name = "public_subnet"
      By = "Sam"
      Terraform = true
    }
  }
}
variable "PUBLIC_SUBNETS_CONFIGS_02" {
  type = object({
    cidr_block = string
    auto_assign_public_ip = bool
    tags = object({
      Name = string
      By = string
      Terraform = bool
    })
  })
  description = "Configs of Public Subnet"
  default = {
    cidr_block  = "10.10.2.0/24",
    auto_assign_public_ip = true
    tags = {
      Name = "public_subnet"
      By = "Sam"
      Terraform = true
    }
  }
}
variable "PRIVATE_SUBNETS_CONFIGS_01" {
  type = object({
    cidr_block = string
    auto_assign_public_ip = bool
    tags = object({
      Name = string
      By = string
      Terraform = bool
    })
  })
  description = "Configs of Private Subnet"
  default = {
    cidr_block  = "10.10.3.0/24",
    auto_assign_public_ip = false
    tags = {
      Name = "private_subnet"
      By = "Sam"
      Terraform = true
    }
  }
}
variable "PRIVATE_SUBNETS_CONFIGS_02" {
  type = object({
    cidr_block = string
    auto_assign_public_ip = bool
    tags = object({
      Name = string
      By = string
      Terraform = bool
    })
  })  
  description = "Configs of Private Subnet"
  default = {
    cidr_block  = "10.10.4.0/24",
    auto_assign_public_ip = false
    tags = {
      Name = "private_subnet"
      By = "Sam"
      Terraform = true
    }
  }
}
variable "DB_SUBNETS_CONFIGS_01" {
  type = object({
    cidr_block = string
    auto_assign_public_ip = bool
    tags = object({
      Name = string
      By = string
      Terraform = bool
    })
  })
  description = "Configs of DB Subnet"
  default = {
    cidr_block  = "10.10.5.0/24",
    auto_assign_public_ip = false
    tags = {
      Name = "db_subnet"
      By = "Sam"
      Terraform = true
    }
  }
}
variable "DB_SUBNETS_CONFIGS_02" {
  type = object({
    cidr_block = string
    auto_assign_public_ip = bool
    tags = object({
      Name = string
      By = string
      Terraform = bool
    })
  })
  description = "Configs of DB Subnet"
  default = {
    cidr_block  = "10.10.6.0/24",
    auto_assign_public_ip = false
    tags = {
      Name = "db_subnet"
      By = "Sam"
      Terraform = true
    }
  }
}
variable "RESOURCE_TAGS" {
  type = object({
    Name = string
    By = string
    Terraform = bool
  })
  description = "Tags of Resources"
  default = {
    Name = "my-resource"
    By = "Sam"
    Terraform = true
  }
}
variable "AMI" {
  type    = string
  default = "ami-0c618421e207909d0"
}
variable "KEY_NAME" {
  type    = string
  default = "id_rsa"
}
variable "INSTANCE_TYPE" {
  type    = string
  default = "t2.micro"
}
variable "SG_NAME" {
  type    = string
  default = "my_sg"
}