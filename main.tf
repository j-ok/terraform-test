# tfstateの設定
terraform {
  backend "s3" {
    encrypt = "true"
    region = "ap-northeast-1"
    bucket = "circleci-jok-tfstate"
    key = "account-management/terraform.tfstate"
    acl = "bucket-owner-full-control"
  }
}

# AWS Providerの設定
provider "aws" {
  region = "ap-northeast-1"
}

# IAMユーザの設定
resource "aws_iam_user" "iam_users" {
  name = "ci-test1"
  path = "/"
  force_destroy = false
}
