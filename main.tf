terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

resource "random_string" "random" {
  length           = var.random_string_length
  special          = true
  override_special = "/@£$"
}

// pointless change to trigger workflows
