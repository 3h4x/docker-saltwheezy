## Dockerfile for salt-minion on Debian Wheezy
* * * 

Usage:<br>
docker run -d e1337h4xx/saltwheezy

Salt-minion will try to reach docker bridge 172.17.0.1<br>
Install salt-master on local machine and make it automatically accept new minions


/etc/salt/master<br>
`auto_accept: True`


**pro tip of the day!**<br>use iptables to secure your salt-master service

Have fun!
