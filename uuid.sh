#!/bin/bash

#
# this script intend to produce
# random crypto strings (uuid && md5)
# more improvements will come
#
# usage : ./uuid.sh && follow the process ;)
#

echo "Hi Admin! Wanna produce random crypto strings ? Just answer Yes/No !" # try to gen more than once/time!
read answer

# needs to be --> toLower|toUpper if it's possible!

if [[ ($answer = "yes") || ($answer = "Yes") || ($answer = "y") || ($answer = "Y") ]]; then
  # global statements
  echo "Wich crypto code? uuid or md5? uuid/md5"
  read choice
  if [[ $choice = "uuid" ]]; then
    # uuid statement
    cat /proc/sys/kernel/random/uuid
  elif [[ $choice = "md5" ]]; then
    # md5 statement
    echo "write your string here please!"
    read md5
    hash= echo -n "$md5" | md5sum
    echo "$hash"
  fi
fi
exit 0
