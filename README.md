# n and Node.js Cookbook

This cookbook installs the Node.js version manager [n][0] and then uses it to
install a [Node.js][1] binary distribution.

Include the `n-and-nodejs` cookbook in your runlist after the installation of
its dependencies:

```
run_list [
  'recipe[build-essential]',
  'recipe[curl]',
  'recipe[n-and-nodejs]'
]
```

## Attributes

  * `n-and-nodejs['n']['version']` = The version of n to install.
  * `n-and-nodejs['nodejs']['version']` = The version of Node.js to install.

## Attributes Example

```
default_attributes(
  "n-and-nodejs" => {
    "n" => {
      "version" => "1.2.1"
    },
    "nodejs" => {
      # Install a specific version.
      # "version" => "0.10.26",
      #
      # Install the latest stable version.
      "version" => "stable"
    }
  }
)
```

[0]: https://github.com/visionmedia/n
[1]: http://nodejs.org
