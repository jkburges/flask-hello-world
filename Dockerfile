# DOCKER-VERSION        0.4.0

from    ubuntu:12.04
run     echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run     apt-get -y update
run     apt-get -y install python python-flask
run     mkdir -p /srv/fooapp
add     . /srv/fooapp
expose  5000
cmd     ["python", "/srv/fooapp/app.py"]

