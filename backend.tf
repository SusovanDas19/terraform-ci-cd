terraform {
  backend "s3" {
    bucket       = "hold-tf-state"
    key          = "drift-demo/terraform.tfstate"
    region       = "us-east-2"
    encrypt      = true
    use_lockfile = true
  }
}
