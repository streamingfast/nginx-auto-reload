#!/bin/bash

/app/watch-and-reload.sh &
nginx -g "daemon off;"
