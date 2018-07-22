filebucket {
  server => $setting::server,
  path => false,
}

File {
  backup => 'main',
}

node defult {
  if !empty( $trusted['extensions']['pp_role']) {
    include "role::${trusted['extensions']['pp_role']}"
   }
  hiera_include('classes')
}
