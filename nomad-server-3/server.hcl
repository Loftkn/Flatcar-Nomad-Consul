server {
  enabled = true
  bootstrap_expect = 3
}

consul {
  address             = "127.0.0.1:8500"
  server_service_name = "nomad-2"
  auto_advertise      = true
  server_auto_join    = true
  
}

bind_addr = "{{ GetInterfaceIP \"ens3\"}}" 

advertise {
  http = "{{ GetInterfaceIP \"ens3\"}}"
}
