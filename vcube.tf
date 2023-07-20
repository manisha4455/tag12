provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAYKFMLNPOCRRAYY4H"
  secret_key = "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"
}

# Create a bucket
resource "aws_s3_bucket" "b1" {

  bucket = "s3-terraform-bucket-lab-7-15-2023-1"

  acl    = "private"   # or can be "public-read"

  tags = {

    Name        = "My bucket"

    Environment = "Dev"

  }

}
