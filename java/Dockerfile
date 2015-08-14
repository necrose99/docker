FROM jenkler/gentoo-base
MAINTAINER Mikael Jenkler <info@jenkler.com>
RUN emerge-webrsync -q ; \
USE="-alsa -cups -introspection -X" emerge --color=n --nospinner -q dev-java/icedtea-bin ; \
rm -rf /usr/portage
