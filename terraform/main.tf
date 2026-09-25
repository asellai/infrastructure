terraform {
  required_version = ">= 1.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "app_config" {
  filename = "${path.module}/${var.app_name}-${var.environment}.txt"
  content  = "Application ${var.app_name} in ${var.environment}\n"
}
