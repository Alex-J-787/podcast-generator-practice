from ubuntu:latest 

#install dependencies

run apt-get update && apt-get install -y \
  python3.10 \ 
  python3-pip \ 
  git 

run pip3 install PyYAML

copy feed.py /usr/bin/feed.py

copy entrypoint.sh /entrypoint.sh

entrypoint ["/entrypoint.sh"]
