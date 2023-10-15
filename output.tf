output "s3_bucket_arn" {
  description = "ID of bucket"
  value       = aws_s3_bucket.bucket.arn
}
