terraform {
  backend "s3" {
    bucket = "my-dev-terra-jen"
    key    = "terraform/tf.state"
    region = "ap-south-1"
  }
}
