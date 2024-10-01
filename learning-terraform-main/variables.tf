variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter"  {
  description  = "Ami variable"

  type = object({
    name  = string
    owner = string
  })

  default = {
    name  = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" # Bitnami
  }  
}

variable "environment" {
  description = "Evirionment and network prefix"

  type        = object({
    env        = string
    net_prefix = string
  })

  default = {
    env        = "dev"
    net_prefix = "10.0"
  }
}

variable "asg_min"{
  description = "autoscaling SG minimun size"
  default     = 1
}

variable "asg_max"{
  description = "autoscaling SG maximun size"
  default     = 2
}