VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "bento/ubuntu-18.04"
  config.vm.box_version = "201803.24.0"

  config.vm.network :private_network, ip: "192.168.186.193"

  config.vm.synced_folder ".", "/home/vagrant/project", nfs: true, :mount_options => ['actimeo=2']

  config.vm.provider :vmware_fusion do |v|
      v.vmx["memsize"] = "1024"
      v.vmx["numvcpus"] = "1"
  end

  config.vm.provision :shell, :inline => "echo -e '#{File.read("#{Dir.home}/.ssh/id_rsa")}' > '/home/vagrant/.ssh/id_rsa'"
  config.vm.provision :shell, :inline => "echo -e '#{File.read("#{Dir.home}/.gitconfig")}' > '/home/vagrant/.gitconfig'"
  config.vm.provision :shell, :inline => "echo -e '#{File.read("#{Dir.home}/.gitignore")}' > '/home/vagrant/.gitignore'"
  config.vm.provision :shell, :path => "bootstrap.sh"

end
