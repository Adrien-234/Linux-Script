#!/bin/bash

x="Fix repozytory Kali 2024.1"; 

echo $x;

wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2024.1_all.deb
sudo dpkg -i kali-archive-keyring_2024.1_all.deb

echo "End $x";
