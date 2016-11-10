#!/bin/bash

akka-cluster localhost 9999 leave "akka.tcp://$1@$(hostname -i):$2"

