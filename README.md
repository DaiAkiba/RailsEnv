RailsEnv
========

Rails Environment

## Requirements

[VirtualBox](https://www.virtualbox.org/wiki/Downloads)

[Vagrant](http://www.vagrantup.com/downloads.html)

[Chef Client](http://www.getchef.com/chef/install/)

[knife-solo](https://github.com/matschaffer/knife-solo)

[Berkshelf](https://github.com/DaiAkiba/RailsEnv/wiki/BerkShelf%E5%B0%8E%E5%85%A5%E6%89%8B%E9%A0%86)

## Get Started

### 1. get environment

``` bash
$ git clone https://github.com/DaiAkiba/RailsEnv.git
```

### 2. make up vagrant

``` bash
$ cd ./RailsEnv
$ vagrant up
$ vagrant ssh-config --host vagrant >> ~/.ssh/config
```

### 3. prepare knife environment to the vagrant

``` bash
$ cd ./chef-repo
$ knife solo prepare vagrant
```

This command may fail once..Please retry same command, then success.


### 4. get vendor cookbooks by Berkshelf

``` bash
$ berks vendor ./cookbooks
```

### 5. cook the vagrant environment

``` bash
$ knife solo cook vagrant
```

---

## References

[chef-rails-dev-box](https://github.com/banyan/chef-rails-dev-box)
