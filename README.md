RailsEnv
========

Rails Environment

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

### 4. cook the vagrant environment

``` bash
$ knife solo cook vagrant
```

---

## References

[chef-rails-dev-box](https://github.com/banyan/chef-rails-dev-box)
