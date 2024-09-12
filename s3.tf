resource "aws_s3_bucket" "website" {
  bucket = "cloud-crew-static-website-bucket"
  object_ownership = "BucketOwnerEnforced"  # Ensure this is needed for your use case

  tags = {
    Name = "website_bucket"
  }
}

resource "aws_s3_bucket_acl" "website_acl" {
  bucket = aws_s3_bucket.website.id
  acl    = "public-read"  # Only use if necessary and compatible
}
