output "f5_bigip_public_ips_mgmt" {
  value = concat(aws_eip.f5_bigip1_mgmt[*].public_ip, aws_eip.f5_bigip2_mgmt[*].public_ip)
}

output "f5_bigip_public_ips_app" {
  value = aws_eip.f5_bigip1_app.public_ip
}
output "f5_bigip_private_ips_app" {
  value = [sort(aws_network_interface.f5_bigip1_interface.private_ips)[1],sort(aws_network_interface.f5_bigip2_interface.private_ips)[1]]
}
