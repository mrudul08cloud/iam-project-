variable "roles" {
  type = map(object({
    service    = string
    policy_arn = string
  }))

  default = {
    data-lambda-role = {
      service    = "lambda.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AWSLambdaExecute"
    }

    data-s3-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
    }

    data-glue-role = {
      service    = "glue.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess"
    }

    data-athena-role = {
      service    = "athena.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonAthenaFullAccess"
    }

    data-redshift-role = {
      service    = "redshift.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonRedshiftFullAccess"
    }
  }
}
