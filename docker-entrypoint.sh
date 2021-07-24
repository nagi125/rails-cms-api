#!/bin/bash

I="\e[1;32m::\e[00m"

#echo -e "$I Setup / db:schema:load"
#bundle exec rails db:schema:load

echo -e "$I Starting Rails Server..."
rm -f /app/tmp/pids/server.pid
bundle exec rails server -b '0.0.0.0'
