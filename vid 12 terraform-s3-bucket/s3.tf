resource "aws_s3_bucket" "example" {
  bucket = "alifa-khan-my-bucket"

  tags = {
    Owner        = "alifa"
    Environment = "test"
  }
}