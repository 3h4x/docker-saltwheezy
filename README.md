## Dockerfile for salt-minion on Debian Wheezy
* * * 

#### Usage
docker run -d e1337h4xx/saltwheezy

#### Info
Salt-minion will try to reach docker bridge 172.17.0.1

Install salt-master on local machine and make it automatically accept new minions

**pro tip of the day!**
use iptables to secure your salt-master service

#### Configuration
/etc/salt/master

`auto_accept: True`


#### Have fun!
