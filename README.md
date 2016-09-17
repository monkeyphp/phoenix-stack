# phoenix-stack

This repository is aimed at getting a working environment installed and configured
to start developing an application using the [Phoenix Framework](http://www.phoenixframework.org/).

It will attempt to install the stack as described in the 
[Installation](http://www.phoenixframework.org/docs/installation) and the 
[Up And Running](http://www.phoenixframework.org/docs/up-and-running) guides.


## Getting Started

You will need the following applications, installed on your development
machine.

- [Git](http://git-scm.com/downloads)
- [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)

### Git

Install Git from [here](http://git-scm.com/downloads)

```bash
    $ git --version
    $ git version 1.9.5 (Apple Git-50.3)
```

### Virtual Box

Install VirtualBox from [here](https://www.virtualbox.org/wiki/Downloads)

```bash
    $ vboxmanage --version
    $ 4.3.24r98716
```
### Vagrant

Install Vagrant from [here](https://www.vagrantup.com/downloads.html)

```bash
    $ vagrant --version
    $ Vagrant 1.6.5
```

## Getting the Code

Download the release as tar.gz or zip format

```bash
    $ curl -OL https://github.com/monkeyphp/phoenix-stack/archive/0.0.1.tar.gz
    $ tar -xzf 0.0.1.tar.gz
    $ mv phoenix-stack-0.0.1 phoenix-stack
    $ cd phoenix-stack 
```

Or clone out this repository

```bash
    $ git clone git@github.com:monkeyphp/phoenix-stack.git
    $ cd phoenix-stack
    $ rm -Rf .git
```

### Start the Vagrant machine

The following commands should start the Vagrant VM and install the development stack.

```bash    
    $ cd phoenix-stack/tools/vagrant
    $ vagrant up
```


## Creating a new Phoenix Application

> Replace `myapp` with your application name

```bash
    $ cd phoenix-stack/tools/vagrant
    $ vagrant ssh
    $ cd /mnt/project/phoenix-stack
    $ mix phoenix.new myapp
```

### Create the database

```bash
    $ cd phoenix-stack/tools/vagrant
    $ vagrant ssh
    $ cd /mnt/project/phoenix-stack/myapp
    $ mix ecto.create
```

If you get the error `** (Mix) The task "ecto.create" could not be found` check that you 
have changed to your application root directory ie `cd /mnt/project/phoenix-stack/myapp`

## Starting the Server

```bash
    $ cd phoenix-stack/tools/vagrant
    $ vagrant ssh
    $ cd /mnt/project/phoenix-stack/myapp
    $ mix phoenix.server
```


You should now be able to access your site in your browser at: http://192.168.99.210:4000/
