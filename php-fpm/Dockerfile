FROM jenkler/gentoo-base
MAINTAINER Mikael Jenkler <info@jenkler.com>
RUN emerge-webrsync -q ; \
USE="bcmath cli curl exif fpm gd intl json mysql mysqli opcache pcre pdo session sqlite ssl unicode xml xslt" emerge --color=n --nospinner -q dev-lang/php ; \
rm /root/.bash_history &> /dev/null ; \
rm -r /tmp/* &> /dev/null ; \
rm -r /usr/portage &> /dev/null ; \
rm -r /usr/share/doc &> /dev/null ; \
rm -r /usr/share/man/?? &> /dev/null ; \
rm -r /usr/share/man/??_* &> /dev/null ; \
rm -r /var/tmp/* &> /dev/null ; \
rm -r /var/log/* &> /dev/null
EXPOSE 9000
ENTRYPOINT ["php-fpm"]
CMD ["-F"]
