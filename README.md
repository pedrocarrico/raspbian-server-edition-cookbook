## What is this?

This is my attempt to have a proper Raspbian server edition using chef.
Currently it sets the hostname and removes some uneeded/unwanted packages that come pre-installed in the vanilla raspbian install.
Works at least with the latest raspbian (as of 2014-09-09).

## Getting started

Before cooking your Raspbian server edition please install:

- [Install vagrant](https://www.vagrantup.com/downloads.html)
- [Install virtualbox](https://www.virtualbox.org/wiki/Downloads)
- [Download and install Chef-DK](http://downloads.getchef.com/chef-dk)
- `vagrant plugin install vagrant-berkshelf`
- `vagrant plugin install vagrant-vbguest`
- `vagrant plugin install vagrant-omnibus`
- `bundle`

## How to develop/test/tweak the Raspbian server edition recipe

1. `kitchen converge` will cook everything.
2. `kitchen verify` will run the tests.
3. `kitchen test` will run converge and then will run the tests.
4. `kitchen destroy` will terminate every trace of the VM.

## How to run the recipe on your Raspberry Pi

1. Follow the instructions on [how to install raspbian your raspberry pi](http://www.raspberrypi.org/documentation/installation/installing-images/mac.md)
2. Put your ssh public key on the authorized keys in the root user of your pi.
3. `knife configure -r . --defaults`
4. Configure your raspberry pi in nodes/raspberrypi.json
5. `knife solo bootstrap root@raspberrypi` to install chef and start cooking.


## Copyright
Licensed under the [WTFPL](http://en.wikipedia.org/wiki/WTFPL "Do What The Fuck You Want To Public License") license.
