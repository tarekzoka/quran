#!/bin/sh
#
wget -O /tmp/enigma2-plugin-extensions-quran_v1.0_all.deb "https://raw.githubusercontent.com/tarekzoka/quran/main/enigma2-plugin-extensions-quran_v1.0_all.deb"

wait

apt-get update ; dpkg -i /tmp/*.deb ; apt-get -y -f install

wait

dpkg -i --force-overwrite /tmp/*.deb

wait

rm -r /tmp/enigma2-plugin-extensions-quran_v1.0_all.deb

wait

sleep 2;

exit 0
