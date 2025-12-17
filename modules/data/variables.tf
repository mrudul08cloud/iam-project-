variable "roles" {
  type = map(object({
    service    = string
    policy_arn = string
  }))
}
