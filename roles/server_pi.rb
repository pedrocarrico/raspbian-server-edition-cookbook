name 'server_pi'
description 'My server edition raspberry pi'
run_list(
  'recipe[server_pi::default]'
)
default_attributes(
  set_fqdn: 'serverpi'
)
