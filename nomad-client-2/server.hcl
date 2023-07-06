client {
  enabled = true
  servers = ["192.168.110.249:4647", "192.168.110.250:4647", "192.168.110.251:4647"]
}

consul {
  address             = "127.0.0.1:8500"
  client_service_name = "nomad-client"
  auto_advertise      = true
  client_auto_join    = true
  
}

bind_addr = "{{ GetInterfaceIP \"enp7s0\"}}" 
