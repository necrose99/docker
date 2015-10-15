FROM jenkler/gentoo-base
MAINTAINER Mikael Jenkler <info@jenkler.com>
RUN emerge-webrsync -q ; \
USE="-minimal" emerge --color=n --nospinner -q dev-db/mariadb ; \
rm /root/.bash_history &> /dev/null ; \
rm -r /tmp/* &> /dev/null ; \
rm -r /usr/portage &> /dev/null ; \
rm -r /usr/share/doc &> /dev/null ; \
rm -r /usr/share/man/?? &> /dev/null ; \
rm -r /usr/share/man/??_* &> /dev/null ; \
rm -r /var/tmp/* &> /dev/null ; \
rm -r /var/log/* &> /dev/null ; \
mkdir /var/log/mysql ; \
mkdir /var/run/mysqld ; \
chown mysql:mysql /var/run/mysqld
EXPOSE 3306
ENTRYPOINT ["mysqld"]
