# debian-init

Creates a new Debian VM in VirtualBox. Zero Touch Installation - Just Run 1 command and all set.

## How to use

-   If you have Windows computer, run 'setup-windows.ps1' file as administrator.
-   If you have Debian/Ubuntu based computer, run './setup-debian.sh' using sudo/root. Make sure to change permissions of this file using 'sudo chmod +x setup-debian.sh'
-   If you have RHEL/CentOS/Fedora based computer, run './setup-rhel.sh' using sudo/root. Make sure to change permissions of this file using 'sudo chmod +x setup-rhel.sh'

## Useful commands

> vagrant up

-   To Turn a VM on or create a new VM. Make sure you're in a folder where Vagrantfile exists. Here in my case 'src' folder is having Vagrantfile
    > vagrant destroy
-   To delete VM including the data. Be cautious.
    > vagrant halt
-   To shut down gracefully.
    > vagrant reload
-   To reload if you made any change in Vagrantfile.
    > vagrant ssh
-   To SSH that VM. No password required. SSH key will be used behind the scenes.

## To create new password of vagrant user

> vagrant ssh
> sudo passwd
