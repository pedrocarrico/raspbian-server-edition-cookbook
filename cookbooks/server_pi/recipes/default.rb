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
  apt-get purge ^epiphany-browser -y
  apt-get purge sonic-pi -y
  apt-get purge wolfram-engine -y
  apt-get purge scratch -y
  apt-get purge penguinspuzzle -y
  apt-get purge desktop-base -y
  apt-get purge lightdm -y
  apt-get purge obconf -y
  apt-get purge openbox -y
  apt-get purge raspberrypi-artwork -y
  apt-get autoremove -y
  apt-get upgrade -y
  apt-get clean
  EOH
end

package 'avahi-daemon' do
  action :install
end

package 'tmux' do
  action :install
end
