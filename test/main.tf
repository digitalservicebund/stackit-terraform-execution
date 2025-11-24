terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }
  }
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo $STACKIT_SERVICE_ACCOUNT_KEY_PATH"
  }
}