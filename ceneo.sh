#!/bin/sh

sudo yum install curl wget
sudo curl -o /etc/yum.repos.d/konimex-neofetch-epel-7.repo https://copr.fedorainfracloud.org/coprs/konimex/neofetch/repo/epel-7/konimex-neofetch-epel-7.repo

wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/dnf-conf-0.6.4-2.sdl7.noarch.rpm
wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/dnf-0.6.4-2.sdl7.noarch.rpm
wget http://springdale.math.ias.edu/data/puias/unsupported/7/x86_64/python-dnf-0.6.4-2.sdl7.noarch.rpm

sudo yum install python-dnf-0.6.4-2.sdl7.noarch.rpm dnf-0.6.4-2.sdl7.noarch.rpm dnf-conf-0.6.4-2.sdl7.noarch.rpm

rm -rf python-dnf-0.6.4-2.sdl7.noarch.rpm
rm -rf dnf-0.6.4-2.sdl7.noarch.rpm
rm -rf dnf-conf-0.6.4-2.sdl7.noarch.rpm

sudo dnf install neofetch
