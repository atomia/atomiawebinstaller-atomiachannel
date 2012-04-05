To create this package the following process was used:

1. Download and extract it to a server setup to respond to the hostname atomia-hostname
to a subfolder of the webroot called atomia-relative-joomla-url
cd /var/www/
wget http://joomlacode.org/gf/download/frsrelease/15900/68955/Joomla_1.7.2-Stable-Full_Package.tar.gz
mkdir atomia-relative-joomla-url
cd atomia-relative-joomla-url
tar xfpz ../Joomla_1.7.2-Stable-Full_Package.tar.gz

2. Create a database on some mysql server called atomia-joomladb-name
	mysql> create database `atomia-joomla-db-name`;
	Query OK, 1 row affected (0.11 sec)

3. Grant permissions to the database to a user called atomia-db-user
with the password atomia-db-pass
	mysql> grant all on `atomia-joomla-db-name`.* to `atomia-db-user`@`%` identified by 'atomia-db-pass';
	Query OK, 0 rows affected (0.00 sec)

4. If you haven't created a package previously, then edit your hosts file and add:
	xxx.xxx.xxx.xxx		atomia-hostname

where xxx.xxx.xxx.xxx is the IP of the server.

5. Browse to http://atomia-hostname/atomia-relative-joomla-url

6. On the server, add to the hosts file the following (if not already existing):
	yyy.yyy.yyy.yyy		atomia-db-host

7. Perform the installation selecting:
Svenska (swedish)swe
atomia-db-host
atomia-db-user
atomia-db-pass
atomia-joomla-db-name
atdbtprefix_ 
atomia-site-title
(advanced): atomia-meta-description, atomia-meta-keywords
atomia-site-email@example.com
atomia-admin-username
atomia-admin-password
(install example data)

8. Save the config to configuration.php

9. rm -rf installation

10. Execute a command like the following and note the date or dates that need to be
changed to the current time of the installation:
mysqldump -u atomia-db-user -patomia-db-pass -h atomia-db-host atomia-joomla-db-name | grep 2011-01-20

12. Execute:
mysql -u atomia-db-user -patomia-db-pass -h atomia-db-host atomia-joomla-db-name -e "update atdbtprefix_users set password = 'atomia-admin-password'"

13. Create joomla-base.xml like:
TODO

14. Execute

	atomiawebpackager --package joomla-base.xmltemplate --tarballpath /path/to/atomia-hostname/webroot/atomia-relative-joomla-url > joomla.xml
