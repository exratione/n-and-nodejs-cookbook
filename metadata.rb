name              'n-and-nodejs'
license           'MIT'
description       'Install Node.js version manager n and Node.js.'
version           '0.0.1'
recipe            'n-and-nodejs', 'Install Node.js version manager n and Node.js.'

# We will be building n from source.
depends 'build-essential'
# n uses curl to download Node.js binaries.
depends 'curl'

%w{ fedora redhat centos ubuntu debian amazon suse scientific oracle smartos}.each do |os|
  supports os
end

attribute 'n-and-nodejs/n/version',
  :display_name => 'n version.',
  :description => 'Which version of n to install.',
  :default => '1.2.1'

attribute 'n-and-nodejs/nodejs/version',
  :display_name => 'Node.js version',
  :description => 'Which version of Node.js to install, where "stable" means the latest stable version.',
  :default => 'stable'
