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
  }
}
