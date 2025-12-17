variable "roles" {
  type = map(object({
    service    = string
    policy_arn = string
  }))

  default = {

    dev-ec2-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"
    }

    dev-lambda-role = {
      service    = "lambda.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
    }

    dev-s3-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
    }

    dev-cloudwatch-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
    }

    dev-ecr-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
    }
  }
}
