#!/bin/bash

domain="zhubiaook.com"

case "$1" in
172.18.17.20)
	hostnamectl set-hostname "ha1.$domain"
	;;
172.18.17.21)
	hostnamectl set-hostname "ha2.$domain"
	;;
172.18.17.22)
	hostnamectl set-hostname "varnish1.$domain"
	;;
172.18.17.23)
	hostnamectl set-hostname "varnish2.$domain"
	;;
172.18.17.24)
	hostnamectl set-hostname "nt1.$domain"
	;;
172.18.17.25)
	hostnamectl set-hostname "nt2.$domain"
	;;
172.18.17.26)
	hostnamectl set-hostname "redis1.$domain"
	;;
172.18.17.27)
	hostnamectl set-hostname "redis2.$domain"
	;;
172.18.17.28)
	hostnamectl set-hostname "ansible.$domain"
	;;
*)
	exit 2
	;;
esac
