#!/bin/bash

system=$1
host=$2
port=$3

while akka-cluster localhost 9999 leave akka.tcp://$system@$host:$port; do sleep 3; done

