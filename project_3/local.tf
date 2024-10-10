resource "null_resource" "local_null_resource"{
    provisioner "local-exec" {
        command ="echo 'Provisioning Successful' > provisioner.txt"
    }
}