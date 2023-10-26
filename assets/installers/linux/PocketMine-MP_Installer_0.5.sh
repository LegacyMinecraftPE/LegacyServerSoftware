#!/bin/bash
echo "[INFO] PocketMine-MP downloader for Linux - by @shoghicp v0.5"
echo "[0/2] Cleaning..."
rm -r -f src/
rm -f PocketMine-MP.php
rm -f README.md
rm -f LICENSE
rm -f compile_php.sh
rm -f start.sh
rm -f start.bat
echo "[1/2] Downloading latest development version of PocketMine-MP..."
set -e
wget https://github.com/shoghicp/PocketMine-MP/archive/master.tar.gz --no-check-certificate -q -O - | tar -zx > /dev/null
mv -f PocketMine-MP-master/* ./
rm -f -r PocketMine-MP-master/
rm -f ./start.cmd
chmod 0755 ./start.sh
chmod 0755 ./compile_php.sh
echo "[2/2] Compiling PHP5"
./compile_php.sh
echo "[INFO] Done"