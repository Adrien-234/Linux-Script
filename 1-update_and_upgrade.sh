#!/bin/bash

x="Update and Upgrade"; 

echo $x;

sudo apt update
sudo apt upgrade -y

echo "End $x";
