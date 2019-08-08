#!/bin/bash

cd dg9_9_13/DGROOT/ && bin/dg9_9_13 -P0.0.0.0:1080 SERVER=socks5 ADMIN=a@b.cc && cd - &&
  /startup.sh $@


