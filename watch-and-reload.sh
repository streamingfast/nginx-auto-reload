#!/bin/bash

while inotifywait -e create -e modify -e delete -e move /etc/nginx/nginx.conf /etc/nginx/conf.d; do
  if nginx -t; then
    echo "Reloading nginx"
    nginx -s reload
    continue
  fi
  echo "Error in nginx configuration: not reloading"
done
