# s3.tf
resource "aws_s3_bucket" "website" {
  bucket = "cloud-crew-static-website-bucket"
  acl    = "public-read"
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
  tags = {
    Name = "static-website-bucket"
  }
}
