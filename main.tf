resource "aws_mwaa_environment" "example" {
  dag_s3_path        = "dags/"
  execution_role_arn = aws_iam_role.example.arn
  name               = "example"

  network_configuration {
    security_group_ids = ["sg-04f0b6e88fcd2b6de","sg-07f4377f13eefbdc6"]
    subnet_ids         = ["subnet-083f60308cc643012","subnet-05244b86b15d97348","subnet-0953f3608b7a4b8e9","subnet-0d6d19655bf5771bc"]
  }

  source_bucket_arn = "arn:aws:s3:::airflow197805"
}
