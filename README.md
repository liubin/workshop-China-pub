# workshop-China-pub

** WIP, attation**

# Examples

## How to run

```
cd somewhere
git clone https://github.com/liubin/workshop-China-pub.git workshop
cd workshop
# You should run with `--provision` option
# only the first time you bring up the VM
# On this step, all you can do is just WAIT, WAIT, and WAIT....
# The happiness depends on your network speed.
vagrant up --provision

vagrant reload
```

If you get this error when reloading,
```
    default: /workshop => E:/workshop-China-pub
Failed to mount folders in Linux guest. This is usually because
the "vboxsf" file system is not available. Please verify that
the guest additions are properly installed in the guest and
can work properly. The command attempted was:

mount -t vboxsf -o uid=`id -u vagrant`,gid=`getent group vagrant | cut -d: -f3` workshop /workshop
mount -t vboxsf -o uid=`id -u vagrant`,gid=`id -g vagrant` workshop /workshop
```
You can update you guest additions by:

```
# Now VM has started, so you can ssh into it and run commands
# If you have run into some errors,
# this may be help http://qiita.com/liubin/items/f03398c4be61d21878b8

# In host
vagrant ssh

# Then in VM
sudo /etc/init.d/vboxadd setup

# And then fix it according to the error messages.
```

## 1. Vagrantfile


## 2. Build Docker image using Dockerfile


