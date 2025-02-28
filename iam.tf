resource "aws_iam_role_policy_attachment" "msk_execution" {
  role       = local.role_name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaMSKExecutionRole"
}
