
default['collectd-ng']['plugin']['apache']['instances'] = [
    {
        'name' => 'apache80',
        'url' => 'http://127.0.0.1:8888/server-status?auto'
    }
]
