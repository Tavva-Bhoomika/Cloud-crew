resource "aws_s3_bucket" "website" {
  bucket = "cloud-crew-static-website-bucket"
  
  object_ownership = "BucketOwnerEnforced"

  tags = {
    Name = "static-website-bucket"
  }
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.website.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

