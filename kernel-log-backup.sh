#!/bin/bash

echo "Checking if kern.log is empty..."

if [ -s /var/log/kern.log ]
then
  echo "File is not empty, about to copy file..."
  cp kern.log /home/ubuntu
  mv /home/ubuntu/kern.log /home/ubuntu/kern-log-backup.log
else
  echo "File is empty..."
  exit 1
fi
exit 0

