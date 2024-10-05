module "ec2_instance" {
    source = "../ec2_instance"
    ami_id = "ami-0fff1b9a61dec8a5f"
    instance_type = "t2.micro"

    
  
}