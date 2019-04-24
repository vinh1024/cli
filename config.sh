#!/bin/bash

###### INSTALLATION SCRIPT #######

echo "======== Install dependencies =========="
echo "-------- Install libtac ---------"
cd ./dependencies/pam_tacplus-1.4.1

apt install autoconf -y
apt install make -y
apt install cmake -y
apt install libtool -y
apt install libpam-dev -y
apt install libcap-dev -y
apt install pkg-config -y
apt install openssl -y
apt install libssl-dev -y
./auto.sh
./configure && make -j4 && make isntall

cd ../..

echo "-------- Install libaudit --------"

apt install libaudit-dev -y

echo "-------- Install libreadline ---------"

apt install libreadline-dev

cp /usr/local/lib/libtac.la  /usr/local/lib/libtac.so  /usr/local/lib/libtac.so.2  /usr/local/lib/libtac.so.2.0.0 /usr/lib/
echo "======== Build CLI =========="

cmake .

make -j4 && make install

echo "======== DONE! ========"
echo "run sonic-cli: $ cli"
 




