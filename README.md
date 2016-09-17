# phoenix-stack

This repository is aimed at getting a working environment installed and configured
to start developing an application using the [Phoenix Framework](http://www.phoenixframework.org/).

It will attempt to install the stack as described in the 
[Installation](http://www.phoenixframework.org/docs/installation) and the 
[Up And Running](http://www.phoenixframework.org/docs/up-and-running) guides.


## Getting Started

### Clone out this repository

```bash
    $ git clone git@github.com:monkeyphp/phoenix-stack.git
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

## Starting the Server

```bash
    $ cd phoenix-stack/tools/vagrant
    $ vagrant ssh
    $ cd /mnt/project/phoenix-stack/myapp
    $ mix phoenix.server
```


You should now be able to access your site in your browser at: http://192.168.99.210:4000/
