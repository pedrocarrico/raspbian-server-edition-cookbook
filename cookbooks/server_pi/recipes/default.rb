include_recipe 'hostname::default'

# http://blog.pedrocarrico.net/post/90383758203/strip-down-raspbian-to-a-bare-minimum
bash 'remove_raspbian_packages' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  apt-get update
  apt-get purge xserver* -y
  apt-get purge ^x11 -y
  apt-get purge ^libx -y
  apt-get purge ^lx -y
  apt-get purge samba* -y
  apt-get purge supercollider* -y
  apt-get purge netsurf* -y
  apt-get purge omxplayer -y
  apt-get autoremove -y
  apt-get upgrade -y
  apt-get clean
  EOH
end

package 'tmux' do
  action :install
end
