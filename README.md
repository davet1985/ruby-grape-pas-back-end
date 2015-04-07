# Ruby Grape PAS back-end

Assuming you have the following installed: -

* Vagrant
* VirtualBox

The setup do the following: -

1. Open a terminal
2. Go to the ruby-ansible-vagrant-base/development directory
3. ```vagrant up```
4. Vagrant will download the box (if necessary)
5. Ansible will provision the VM
6. ```vagrant ssh```
7. ```cd /ruby-ansible-vagrant-base```
8. ```bundle install```
9. ```shotgun -o 0.0.0.0```
10. Browse to localhost:9494 on the VM host