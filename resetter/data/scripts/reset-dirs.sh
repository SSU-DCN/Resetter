#!/bin/bash

source /etc/os-release

os_version=${ID^}_${VERSION_ID}_64bit
tar_local=${os_version}_local.tar.gz
tar_etc=${os_version}_etc.tar.gz
tar_etc_custom=${os_version}_etc_custom.tar.gz
tar_lib=${os_version}_lib.tar.gz

echo "$(pwd)"

rm -rf /usr/local/bin/*
rm -rf /usr/local/lib/*

#if [ -f ./tars/${tar_local} ]; then
#       cp ./tars/${tar_local} /usr/local/lib/
#       tar -zxvf /usr/local/lib/${tar_local} -C /usr/local/lib/
#fi       

if [ -f ./tars/${tar_etc} ]; then
	rm -rf /etc/*
	cp ./tars/${tar_etc} /etc/
	tar -zxvf /etc/${tar_etc} -C /etc/
	if [ -f ./tars/${tar_etc_custom} ]; then
		cp ./tars/${tar_etc_custom} /etc/
		tar -zxvf /etc/${tar_etc_custom} -C /etc/
	fi
fi

if [ -f ./tars/${tar_lib} ]; then
	rm -rf /var/lib/*
	cp ./tars/${tar_lib} /var/lib/
	tar -zxvf /var/lib/${tar_lib} -C /var/lib/
fi
