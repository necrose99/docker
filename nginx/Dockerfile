FROM jenkler/gentoo-base
MAINTAINER Mikael Jenkler <info@jenkler.com>
RUN emerge-webrsync -q ; \
NGINX_MODULES_HTTP="access auth_basic fastcgi gzip proxy rewrite" emerge --color=n --nospinner -q www-servers/nginx ; \
ln -sf /dev/stdout /var/log/nginx/access.log ; \
ln -sf /dev/stderr /var/log/nginx/error.log ; \
rm /root/.bash_history &> /dev/null ; \
rm -r /tmp/* &> /dev/null ; \
rm -r /usr/portage &> /dev/null ; \
rm -r /usr/share/doc &> /dev/null ; \
rm -r /usr/share/man/?? &> /dev/null ; \
rm -r /usr/share/man/??_* &> /dev/null ; \
rm -r /var/tmp/* &> /dev/null ; \
rm -r /var/log/* &> /dev/null ; \
mkdir /var/log/nginx
EXPOSE 80 443
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
