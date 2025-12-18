# ---------- DEVOPS ROLES ----------
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

  # ---------- DEV ROLES ----------
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

  # ---------- DATA ROLES ----------
  data-lambda-role = {
    service    = "lambda.amazonaws.com"
    policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  }

  data-s3-role = {
    service    = "ec2.amazonaws.com"
    policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  }

  data-glue-role = {
    service    = "glue.amazonaws.com"
    policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
  }

  data-athena-role = {
    service    = "athena.amazonaws.com"
    policy_arn = "arn:aws:iam::aws:policy/AmazonAthenaFullAccess"
  }

  data-redshift-role = {
    service    = "redshift.amazonaws.com"
    policy_arn = "arn:aws:iam::aws:policy/AmazonRedshiftReadOnlyAccess"
  }
}
