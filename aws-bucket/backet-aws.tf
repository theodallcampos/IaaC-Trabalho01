resource "aws_s3_bucket" "mackbucket" {
  bucket = "mack-bucket-iaac"

  tags = {
    Name        = "Bucket Mack"
    Environment = "Dev"
  }
}
