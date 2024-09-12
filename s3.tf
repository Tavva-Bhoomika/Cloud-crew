resource "aws_s3_bucket" "website" {
  bucket = "cloud-crew-static-website-bucket"
  acl    = "public-read"

  tags = {
    Name = "website_bucket"
  }
}

