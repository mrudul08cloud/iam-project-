variable "roles" {
  type = map(object({
    service    = string
    policy_arn = string
  }))

  default = {

    # 1️⃣ Core automation / infra role
    devops-ec2-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
    }

    # 2️⃣ CI/CD – build & pipeline automation
    devops-ci-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AWSCodeBuildAdminAccess"
    }

    # 3️⃣ Monitoring & logging
    devops-cw-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
    }

    # 4️⃣ Container registry (push & pull images)
    devops-ecr-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
    }

    # 5️⃣ EC2 management via SSM (no SSH)
    devops-ssm-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
    }

    # 🔥 6️⃣ VPC & networking (very important)
    devops-vpc-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
    }

    # 🔥 7️⃣ Load balancer & auto scaling
    devops-elb-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/ElasticLoadBalancingFullAccess"
    }

    # 🔥 8️⃣ S3 – artifacts, terraform state, backups
    devops-s3-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
    }

    # 🔥 9️⃣ IAM management (roles, policies)
    devops-iam-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/IAMFullAccess"
    }

    # 🔥 🔟 Audit & security logging
    devops-cloudtrail-role = {
      service    = "ec2.amazonaws.com"
      policy_arn = "arn:aws:iam::aws:policy/AWSCloudTrailFullAccess"
    }
  }
}
