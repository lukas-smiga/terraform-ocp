resource "null_resource" "agent_info" {
  provisioner "local-exec" {
    command = <<EOF
    curl --version
    EOF
  }

  provisioner "local-exec" {
    command = <<EOF
    uname -a
    EOF
  }

  provisioner "local-exec" {
    command = <<EOF
    ls -al . ~ /
    EOF
  }

  provisioner "local-exec" {
    command = <<EOF
    lsblk
    EOF
  }
}