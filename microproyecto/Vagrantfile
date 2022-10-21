# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|

 
  if Vagrant.has_plugin? "vagrant-vbguest"
    config.vbguest.no_install  = true
    config.vbguest.auto_update = false
    config.vbguest.no_remote   = true
  end


config.vm.define :haproxy1 do |haproxy1|
    haproxy1.vm.box = "bento/ubuntu-20.04"
    haproxy1.vm.network :private_network, ip: "192.168.100.7"
    haproxy1.vm.provision "shell", path: "script_haproxy.sh"
    haproxy1.vm.hostname = "haproxy1"
    
  end

config.vm.define :servidor1 do |servidor1|
    servidor1.vm.box = "bento/ubuntu-20.04"
    servidor1.vm.network :private_network, ip: "192.168.100.8"
    servidor1.vm.provision "shell", path: "script_servidor1.sh"
    servidor1.vm.hostname = "servidor1"
  end

config.vm.define :servidor2 do |servidor2|
    servidor2.vm.box = "bento/ubuntu-20.04"
    servidor2.vm.network :private_network, ip: "192.168.100.9"
    servidor2.vm.provision "shell", path: "script_servidor2.sh"
    servidor2.vm.hostname = "servidor2"
  end
  
end
