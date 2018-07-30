#!/bin/bash

if [ ! -d $HOME/.ssh ]; then
  echo "please create directory $HOME/.ssh"
  echo "Imports .ssh to allow outbound connection"
  exit 1
fi

docker build -t phoenix .
if [ ! $? -eq 0 ]; then
  echo "docker build failed."
  exit 1
fi

docker run -it -v /var/run/docker.sock:/var/run/docker.sock -v $HOME/.ssh:/root/.ssh --rm phoenix /bin/bash
