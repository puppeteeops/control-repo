filebucket { 'main':
  server => $setting::server,
  path => false,
}

File {
  backup => 'main',
  selinux_ignore_defaults => true,
}

node default {
  if !empty( $trusted['extensions']['pp_role']) {
    include "role::${trusted['extensions']['pp_role']}"
   }

}
