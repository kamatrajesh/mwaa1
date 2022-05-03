

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_mwaa_environment" "example" {
   dag_s3_path        = "dags/"
  execution_role_arn = "arn:aws:iam::863309687429:role/service-role/AmazonMWAA-MyAirflowEnvironment"
  name               = "example"

  network_configuration {
    security_group_ids = ["sg-04f0b6e88fcd2b6de","sg-07f4377f13eefbdc6"]
    subnet_ids         = ["sg-07f4377f13eefbdc6"]
  }

  source_bucket_arn = "arn:aws:s3:::airflow197805"
  
}
