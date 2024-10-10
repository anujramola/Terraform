/*We created the instance using aws Cli and to use this instance as terraform
resource object we have to use DATA SOURCE concept of importing the existing infrastructure
present in cloud as Terraform object */


data "aws_instance" "new_instance" {
  instance_id = "i-03e9990560a0748d9"  /* This ec2 instance was created using the aws cli */ 
}
/* To get the value of "instance_id" using AWS CLI instead of manually going to AWS console
use "aws ec2 describe instances" you will see the list of resources created by AWS and to verify
the public_ip as output we can refer to it from here too.*/                                    

output "nontf_instance_ip" {
  value = data.aws_instance.new_instance.public_ip
}

/* Now to see if this instance is added as terraform state object or not see **terraform state list**
here you will notice tha data.aws_instance.new_instance is added as terraform object */
