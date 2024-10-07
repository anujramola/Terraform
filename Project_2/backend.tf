terraform {

  backend "s3" {

    bucket = "my-terraform-state-anuj123"

    key    = "terraform-state-file"

    region = "us-east-1"

  }

}
