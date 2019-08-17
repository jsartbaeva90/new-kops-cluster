
terraform {
 backend "s3" {
   bucket = "kubernetes-zhazgulstate.com"
   key = "terrastate"
   region = "eu-west-2"
  }
}

