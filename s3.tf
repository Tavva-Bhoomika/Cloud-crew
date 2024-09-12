resource "aws_s3_bucket" "website" {
  bucket = "cloud-crew-static-website-bucket"
  acl    = "public-read"

  website {
    index_document = "index.html"  # Set the index document
    error_document = "error.html"  # Optionally set an error document
  }

  tags = {
    Name = "website_bucket"
  }
}

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.website.bucket
  key    = "index.html"
  source = "/index.html"  # Path to the local index.html file
  acl    = "public-read"  # Set ACL for the object
}
