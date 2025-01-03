
resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.table_name    # Name of the DynamoDB table, provided as a variable.
  billing_mode = "PAY_PER_REQUEST" # Billing is based on actual usage, optimizing costs.
  hash_key     = "LockID"          # Defines the primary key for the table.
  attribute {
    name = "LockID" # Attribute name for the primary key.
    type = "S"      # Type of the attribute: string (S).
  }
}