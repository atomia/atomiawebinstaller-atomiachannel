To create this package the following process was used:

1. Download http://wordpress.org/latest.tar.gz and extract it
to a server setup to respond to the hostname atomia-hostname
to a subfolder of the webroot called atomia-relative-wordpress-url

2. Create a database on some mysql server called atomia-wordpress-db-name
	mysql> create database `atomia-wordpress-db-name`;
	Query OK, 1 row affected (0.11 sec)

3. Grant permissions to the database to a user called atomia-db-user
with the password atomia-db-pass
	mysql> grant all on `atomia-wordpress-db-name`.* to `atomia-db-user`@`%` identified by 'atomia-db-pass';
	Query OK, 0 rows affected (0.00 sec)

4. If you haven't created a package previously, then edit your hosts file and add:
	xxx.xxx.xxx.xxx		atomia-hostname

where xxx.xxx.xxx.xxx is the IP of the server.

5. On the server, add to the hosts file the following:
	yyy.yyy.yyy.yyy		atomia-db-host

6. Create default wp-config.php:
	cd /path/to/atomia-hostname/webroot/atomia-relative-url
	mv wp-config-sample.php wp-config.php

7. Configure it according to our keywords:
define('DB_NAME', 'atomia-wordpress-db-name');
define('DB_USER', 'atomia-db-user');
define('DB_PASSWORD', 'atomia-db-pass');
define('DB_HOST', 'atomia-db-host');
define('AUTH_KEY',         'atomia-random-string1');
define('SECURE_AUTH_KEY',  'atomia-random-string2');
define('LOGGED_IN_KEY',    'atomia-random-string3');
define('NONCE_KEY',        'atomia-random-string4');
define('AUTH_SALT',        'atomia-random-string5');
define('SECURE_AUTH_SALT', 'atomia-random-string6');
define('LOGGED_IN_SALT',   'atomia-random-string7');
define('NONCE_SALT',       'atomia-random-string8');
$table_prefix  = 'atomia_db_tableprefix';

(leave the rest as standard).

8. Using your browser go to http://atomia-hostname/atomia-relative-wordpress-url/

9. Enter the following in the boxes:

Site Title: atomia-site-title

Username: atomia-blog-username

Password: atomia-blog-password

Email: atomia-blog-email@example.com

10. Press install

11. Execute a command like the following and note the date or dates that need to be
changed to the current time of the installation:
mysqldump -u atomia-db-user -patomia-db-pass -h atomia-db-host atomia-wordpress-db-name | grep 2011-10-24

12. Execute:
mysql -u atomia-db-user -patomia-db-pass -h atomia-db-host atomia-wordpress-db-name -e "update atomia_db_tableprefixusers set user_pass = 'atomia-blog-password'"

13. Create a file wordpress-base.xmltemplate it can be found in previos version

14. Execute

	atomiawebpackager --package wordpress-base.xml --tarballpath /path/to/atomia-hostname/webroot/atomia-relative-url > wordpress.xml
