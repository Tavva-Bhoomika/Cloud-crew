resource "aws_s3_bucket" "website" {
  bucket = "cloud-crew-static-website-bucket"
  acl    = "public-read"

  tags = {
    Name = "static-website-bucket"
  }
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.website.id

  index_document = "index.html"
  error_document = "error.html"
}
