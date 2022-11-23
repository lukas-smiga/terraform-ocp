resource "null_resource" "openshift_client" {
  provisioner "local-exec" {
    command = <<EOF
    curl --version
EOF
  }
}