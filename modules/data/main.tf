resource "aws_iam_role" "data_roles" {
  for_each = var.roles
  name     = each.key

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = each.value.service
      }
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "data_roles" {
  for_each   = var.roles
  role       = aws_iam_role.data_roles[each.key].name
  policy_arn = each.value.policy_arn
}
