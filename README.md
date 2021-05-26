# debian-init

Creates a new Debian VM in VirtualBox. Zero Touch Installation - Just Run 1 command and all set.

## How to use

Windows computer systems (Run as Adminstrator) -
> setup-windows.ps1
For Debian/Ubuntu based systems (Run as sudo/root) -
> sudo chmod +x ./setup-debian.sh
> sudo ./setup-debian.sh
For RHEL/CentOS/Fedora based systems (Run as sudo/root) -
> sudo chmod +x ./setup-rhel.sh
> sudo ./setup-rhel.sh

## Useful commands

-   To Turn a VM on or create a new VM. Make sure you're in a folder where Vagrantfile exists. Here in my case 'src' folder is having Vagrantfile
    > vagrant up
-   To delete VM including the data. Be cautious.
    > vagrant destroy
-   To shut down gracefully.
    > vagrant halt
-   To reload if you made any change in Vagrantfile.
    > vagrant reload
-   To SSH that VM. No password required. SSH key will be used behind the scenes.
    > vagrant ssh
-   To create new password of vagrant user
    > vagrant ssh
    > sudo passwd