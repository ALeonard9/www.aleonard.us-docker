#!/bin/bash

# docker build --target dev -t aleonard9/orion-web:dev .
# if [ ! $? -eq 0 ]; then
#   echo "docker build failed."
#   exit 1
# fi

# docker run --privileged -it -p 80:80 --name phoenix_web --env-file dev.env --rm aleonard9/orion-web:dev /bin/bash

docker build --target prod -t aleonard9/orion-web:prod .
if [ ! $? -eq 0 ]; then
  echo "docker build failed."
  exit 1
fi

docker run --privileged -it -p 80:80 --name phoenix_web --env-file dev.env --rm aleonard9/orion-web:prod /bin/bash