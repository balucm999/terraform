resource "aws_s3_bucket" "my-bucket" {
    bucket = var.name
}

resource "aws_s3_bucket_versioning" "s3-versioning" {
    bucket = aws_s3_bucket.my-bucket.id
    versioning_configuration {
      status = "Enabled"
    }
}
resource "aws_s3_bucket_acl" "acl" {
    bucket = aws_s3_bucket.my-bucket.id
    acl = var.acl
}