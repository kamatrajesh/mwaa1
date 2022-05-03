

resource "aws_mwaa_environment" "example" {
   dag_s3_path        = "dags/"
   execution_role_arn = var.arn
   name               = var.name

  network_configuration {
    security_group_ids = ["sg-07f4377f13eefbdc6"]
    subnet_ids         = ["subnet-05244b86b15d97348","subnet-083f60308cc643012"]
  }

  source_bucket_arn = "arn:aws:s3:::airflow197805"
  
}
