resource "random_string" "random" {
  length           = var.random_string_length
  special          = true
  override_special = "/@£$"
}