terraform {
  backend "s3" {
    bucket = "rstudio-connect-remote-state-bucket-123456"
    key    = "rstudio-connect/.terraform/terraform.tfstate"
    region = "us-west-1"
  }
}
#C:\Users\User\rstudio connect\.terraform\terraform.tfstate