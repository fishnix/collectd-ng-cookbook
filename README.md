# collectd-ng-cookbook

Installs and configured [collectd](https://collectd.org/)

## Supported Platforms

CentOS 6.x

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['collectd']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

By default we install from source since packaged versions of collectd seem to be very old.  If you
would rather use packages, set `node['collectd-ng']['install_method'] = 'package'`.

### collectd::default

Include `collectd` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[collectd::default]"
  ]
}
```

## License and Authors

Author:: E Camden Fisher (<fish@fishnix.net>)
