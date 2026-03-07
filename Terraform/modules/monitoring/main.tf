resource "aws_cloudwatch_log_group" "finance_logs" {

  name              = "/finance/logs"
  retention_in_days = 7
}