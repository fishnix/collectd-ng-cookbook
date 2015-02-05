default['collectd-ng']['plugin']['write_graphite']['nodes'] = [
    {
        'name'    => 'graphite',
        'host'    => '10.1.100.48',
        'port'    => '2003',
        'prefix'  => 'collectd',
        'postfix' => '',
        'protocol' => 'tcp',
        'log_send_errors' => 'false',
        'escape_character' => '_',
        'separate_instances' => 'true',
        'store_rates' => 'false',
        'always_append_ds' => 'false'
    }
]
