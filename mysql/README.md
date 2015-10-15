# Docker Mysql package
Gentoo base with dev-db/mariadb docker package.

## Setup
- Fix /etc/mysql/my.cnf file
- /usr/share/mysql/scripts/mysql_install_db --basedir=/usr
- /usr/bin/mysql_secure_installation

## Notes and usful commands
- Allow fron 172.17.0.% and listen on 0.0.0.0
- Use --entrypoint bash to setup database
- docker stop -t 60 mysql
- docker exec -it mysql bash
- /usr/bin/mysqladmin -u root password 'new-password'
