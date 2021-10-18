# /bin/bash

# system package file location
packageFile = "/data/system/packages.list"

# first parameter as packge name file location, one package name string per line

while read p; do
  grep "$p " /data/system/packages.list | cut -d ' ' -f 2
done <$1
