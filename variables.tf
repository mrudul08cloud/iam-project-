variable "roles" {
  type = map(object({
    service    = string
    policy_arn = string
  }))

  default = {
    devops-ec2-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
    }

    devops-ci-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AWSCodeBuildAdminAccess"
    }

    devops-cw-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
    }

    devops-ecr-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
    }

    devops-ssm-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
    }
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

data-lambda-role = {
      service    = "lambda.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
    }

    # 2️⃣ S3 – data lake (raw / processed / curated data)
    data-s3-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
    }

    # 3️⃣ Glue – ETL jobs, crawlers, catalog
    data-glue-role = {
      service    = "glue.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
    }

    # 4️⃣ Athena – SQL queries on S3 data
    data-athena-role = {
      service    = "athena.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonAthenaFullAccess"
    }

    # 5️⃣ Redshift – data warehouse analytics
    data-redshift-role = {
      service    = "redshift.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonRedshiftReadOnlyAccess"

}
  }
}
