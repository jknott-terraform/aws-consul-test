output "consul_server_address" {
  value = ["${module.consul.dns_addresses}"]
}

output "consul_host_addresses" {
  value = ["${module.consul.host_addresses}"]
}
