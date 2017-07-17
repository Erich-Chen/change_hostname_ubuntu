# change_hostname_ubuntu
a quick dirty script to change hostname for Ubuntu system.  
tested on Ubuntu Server 16.04 LTS

# How to user
```
rm -f change_hostname_ubuntu.sh change_hostname_ubuntu.sh.bak
wget https://raw.githubusercontent.com/ericchenkai/change_hostname_ubuntu/master/change_hostname_ubuntu.sh && sudo chmod +x change_hostname_ubuntu.sh
./change_hostname_ubuntu.sh
```

# New command "hostnamectl" introduced in Ubutu 13.04
```
hostnamectl set-hostname new-hostname
```
