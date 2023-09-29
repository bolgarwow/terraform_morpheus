output "Name" {
  description = "name of VM"
  value       = aws_instance.rhel_test_vm.tags.Name
}
output "public_IP" {
  value = aws_instance.rhel_test_vm.public_ip
}
output "private_ip" {
  value = aws_instance.rhel_test_vm.private_ip
}
