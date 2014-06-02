FROM debian:wheezy
MAINTAINER 31337 +3r0rr "ochach@gmail.com"
RUN apt-get -qq update
RUN apt-get install -y wget
# to get salt
RUN echo "deb http://debian.saltstack.com/debian wheezy-saltstack main" >> /etc/apt/sources.list
RUN wget -q -O- "http://debian.saltstack.com/debian-salt-team-joehealy.gpg.key" | apt-key add -
RUN apt-get -qq update
RUN apt-get upgrade -y
RUN apt-get install -y salt-minion
RUN echo "master: 172.17.42.1" > /etc/salt/minion
CMD (/etc/init.d/salt-minion start && sleep 2 && tailf /var/log/salt/minion)
