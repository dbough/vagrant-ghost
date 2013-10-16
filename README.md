vagrant-ghost
=============

Vagrant config for the Ghost blogging platform. (https://en.ghost.org/)

Requirements
------------

- Vagrant (http://www.vagrantup.com/)
- VirtualBox (https://www.virtualbox.org/)

Instructions
------------

- Download and install Vagrant:  http://www.vagrantup.com/
- Download and install VirtualBox:  https://www.virtualbox.org/wiki/Downloads
- Clone this repo:  `git clone https://github.com/dbough/vagrant-ghost.git`
- Bring vagrant up:  `cd vagrant-ghost`, `vagrant up`
- Use Ghost in your browser: `http://localhost:1234`

Notes
-----

- If you don't want Ghost to automatically start when you bring vagrant up, comment out the following in `bootstrap.sh`: `screen -S ghost -m -d sudo npm start`
- You can change the version of Ghost used by updating the following in `bootstrap.sh`:  `VERSION=0.3.2`
- If you don't have the precise32 box on your machine, it will automatically be downloaded.  This can take a few minutes the first time it runs.

Author
------

Dan Bough  
daniel (dot) bough (at) gmail (dot) com  
http://www.danielbough.com

License
-------

Free to use and distribute under the GPLv3 license.
