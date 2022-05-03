resource "aws_mwaa_environment" "example" {
  version = "2.2.2"
  account_id = "863309687429"
  environmentname = "MyEnvironment_terra"
  internet_gateway_id = "igw-08ecca2ea7c88702a"
  private_subnet_cidrs = ["10.192.20.0/24","10.192.21.0/24"] # depending on your vpc ip range
  public_subnet_cidrs = ["10.192.10.0/24","10.192.11.0/24"] # depending on your vpc ip range
  region = "us-east-1"
  source_bucket_arn = "arn:aws:s3:::airflow197805"
  vpc_id = "vpc-06179917ff299190d"
}
