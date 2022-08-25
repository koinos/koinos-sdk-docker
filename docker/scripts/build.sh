#!/bin/bash

cd /src

if [ `ls *.cpp 2>/dev/null | wc -l` -gt 0 ]; then
   /opt/koinos-sdk/cpp/scripts/build.sh
elif [ `ls *.ts 2>/dev/null | wc -l` -gt 0 ]; then
   /opt/koinos-sdk/as/scripts/build.sh
else
   echo "did not find any compatible source files"
fi
