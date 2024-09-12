resource "aws_s3_bucket" "website" {
  bucket = "cloud-crew-static-website-bucket"  # Ensure this name is unique

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = {
    Name        = "website_bucket"
    Environment = "prod"
  }
}