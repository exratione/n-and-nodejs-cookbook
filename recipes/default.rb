#
# Install n and Node.js.
#

# ----------------------------------------------------------------------------
# Install n by building from source.
# ----------------------------------------------------------------------------

# Obtain the source from GitHub.
remote_file "/tmp/#{node['n-and-nodejs']['n']['version']}.tar.gz" do
  source "https://github.com/visionmedia/n/archive/#{node['n-and-nodejs']['n']['version']}.tar.gz"
  action :create_if_missing
end

# Build and install.
execute "tar zxf #{node['n-and-nodejs']['n']['version']}.tar.gz" do
  cwd "/tmp"
end
execute "make install" do
  cwd "/tmp/n-#{node['n-and-nodejs']['n']['version']}"
end

# --------------------------------------------------------------------------
# Install Node.js
# --------------------------------------------------------------------------

execute "n #{node['n-and-nodejs']['nodejs']['version']}"
