Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  # config.vm.box_version = "20190426.0.0" #optional version
  # config.vm.synced_folder "./www", "/var/www" #optional forsynch folder
  config.vm.network :private_network, ip: "192.168.30.30"

  config.ssh.username = 'vagrant'
  config.ssh.insert_key = true

  config.vm.provider "virtualbox" do |vb|
    vb.name = "sx-ubuntu-docker"
    vb.memory = 2048
    vb.gui = false
    vb.memory = 2048
    vb.cpus = 2
  end

  # sheel script for setup the VM
  config.vm.provision :shell, path: "bootstrap.sh"

end