resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  tags = var.tags
   versioning {
    enabled = var.versioning
  }
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.bucket.id
  acl    = var.acl
}
