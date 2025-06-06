#!/bin/bash

#update cento with patches
yum update -y --exclude=kernel

#tools
yum install -y nano git unzip screen nc telnet
