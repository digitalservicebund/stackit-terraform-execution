terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}

resource "null_resource" "service_account_key" {
  provisioner "local-exec" {
    command = "cat $STACKIT_SERVICE_ACCOUNT_KEY_PATH"
  }
}
resource "null_resource" "backend_key_id" {
  provisioner "local-exec" {
    command = "echo $AWS_ACCESS_KEY_ID"
  }
}
resource "null_resource" "backend_secret_key" {
  provisioner "local-exec" {
    command = "echo $AWS_SECRET_ACCESS_KEY"
  }
}