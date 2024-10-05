variable "ami_id" {
    type = string
    description = "ec2_instance ami id"
    default = "ami-0866a3c8686eaeeba"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "type of the instance"
  
}

variable "instance_name" {
    type= string
    description = "name of the ec2-instance"
    default = "my_practise instance"  
}
