resource "aws_secretsmanager_secret" "database_password_secret" {
  name = "/flask/password"
}

resource "aws_secretsmanager_secret_version" "database_password_secret_version" {
  secret_id     = aws_secretsmanager_secret.database_password_secret.id
  secret_string = var.database_password
}
