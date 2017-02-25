# -*- mode: ruby -*-
# vi: set ft=ruby:

$script = <<SCRIPT
nix-env -i mosh
nix-env -i emacs
exit 0
SCRIPT

Vagrant.configure(2) do |config|
    config.vm.box = "nixbox64"
    config.vm.hostname = "nixbox.vagrant"
    config.vm.network "private_network", ip: "192.168.50.51"
    config.vm.provision "shell", inline: $script
    config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--usb", "off"]
        vb.customize ["modifyvm", :id, "--usbehci", "off"]
        vb.name = "nixbox.vagrant"
        vb.memory = 4096
        vb.cpus = 4
    end
end
