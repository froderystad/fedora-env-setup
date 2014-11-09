Fedora Environment Setup
========================

This project contains scripts that takes a plain vanilla Fedora 20 installation, and sets it up to be a decent development workstation.

This script is expecting that the following pre-requisites are met:
 * [Fedora 20 (64 bit)](http://fedoraproject.org/), with the standard software packages installed from Live DVD.
 * The user running the scripts is administrator (i.e. 'sudoer'). This can be configured during installation.
 * Git must be installed, `sudo yum -y install git`. Or you just copy the sources from a web browser and paste it into a file.

Clone this Git repository:

```
git clone https://github.com/froderystad/fedora-env-setup
```

Change directory to `fedora-env-setup` and run the script:
```
sh ./install.sh
```

The installation has been tested on Fedora 20 in VirtualBox with English language and Norwegian keyboard layout. It should however, work with any other languages.

If you run Fedora in a virtual machine, I recommend taking a snapshot before running the script, as it allows you to roll back all changes, modify, and rerun the scripts, if you so desire.
