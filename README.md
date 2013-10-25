vagrant-ghost
=============

Vagrant config for the Ghost blogging platform. (https://ghost.org/)

Requirements
------------

- Vagrant (http://www.vagrantup.com/)
- VirtualBox (https://www.virtualbox.org/)
- Internet Access

Instructions
------------

- Download and install Vagrant:  http://www.vagrantup.com/
- Download and install VirtualBox:  https://www.virtualbox.org/wiki/Downloads
- Clone this repo:  `git clone https://github.com/dbough/vagrant-ghost.git`
- Bring vagrant up:  `cd vagrant-ghost`, `vagrant up`
- Use Ghost in your browser: `http://localhost:1234`

Notes
-----

- Ghost will automatically start via an INIT job.  You can `sudo service ghost stop`, `sudo service ghost start`, and `sudo service ghost restart` it from the vagrant box shell (`vagrant ssh`). 
- You can view ghost logs in the shared folder.  Locally = `vagrant-ghost/shared/ghost.log`, Vagrant = `/home/vagrant/shared/ghost.log`
- You can choose the version of Ghost to download and run by changing `VERSION` on line 8 of `boostrap.sh` (this has only been tested with `0.3.2`).
- If you don't have the precise32 box on your machine, it will automatically be downloaded.  This can take a few minutes the first time it runs.

Author
------

Dan Bough  
daniel (dot) bough (at) gmail (dot) com  
http://www.danielbough.com

License
-------

Free to use and distribute under the GPLv3 license.
