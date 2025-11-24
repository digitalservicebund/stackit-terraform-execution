null_resource "example" "example" {
  provisioner "local-exec" {
    command = "echo Hello, World!"
  }
}
