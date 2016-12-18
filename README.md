# BACKUP MYSQL DB

Ruby script that creates a dump file of all databases
and compresses it to a single tar.gz file then delete the temporary dump files.

Usage: `ruby backup-mysql-db.rb`

Author: Raymond Usbal <raymond@philippinedev.com>

Date: 18 December 2016

Set database access configuration in `.extra.my.cnf`
```
[client]
user = root
password = root1
```

### Sample run:
```
~/RubymineProjects/BackupMysqlDb$ ruby backup-mysql-db.rb 

--- mysqldump ---
bible_db: 33685448
gallerycms: 131636
innovation_development: 11579
innovation_test: 10479
langwiesen: 1448410
langwiesen_live: 5524210
langwiesen_nov2016: 7479187
laravel_ajaxlogin: 4037
laravel_asgard: 39228
laravel_canvas: 25444
laravel_child: 55329
laravel_clumsy_cms: 12761
laravel_dell: 60870
laravel_jesusnames: 9335
laravel_learn_asgard: 60415
laravel_pyro: 155946
laravel_quickstart: 4731
laravel_ren4water: 483698
laravel_tmp: 3774
learning_laravel_tickets: 6440
mamix_development: 105114
mamix_production: 1260
mamix_test: 1254
mamixlive_development: 10189366
mysql: 1780486
oct_blog: 72180
oct_builder: 248448
oct_chairs: 253993
oct_pages: 104984
oct_relationship: 1298577
oct_rhytreat: 110189
oct_todo: 82528
rails_cms_development: 12251
ray_cms: 4128
raymond_cms_development: 4340
rhytreat_development: 26590
searchsite_development: 24068
searchsite_test: 5397
sharetribe_development: 109737
sharetribe_production: 1265
sharetribe_test: 109471
silverstripe: 38296
typiwater: 52213
wordpress_fresh: 505662
wordpress_test: 774720
wp_acf: 735327
wp_blumenhaus: 981424
wp_blumenhaus_new: 733399
wp_casa: 1251
wp_cpt: 1195640
wp_dell: 710359
wp_goetzpartner: 859378
wp_grunig: 816150
wp_listing: 698136
wp_philippinedev: 909634
wp_quo: 723662

--- tar ---
a 20161218.124010
a 20161218.124010/bible_db.sqldump.sql
a 20161218.124010/gallerycms.sqldump.sql
a 20161218.124010/innovation_development.sqldump.sql
a 20161218.124010/innovation_test.sqldump.sql
a 20161218.124010/langwiesen.sqldump.sql
a 20161218.124010/langwiesen_live.sqldump.sql
a 20161218.124010/langwiesen_nov2016.sqldump.sql
a 20161218.124010/laravel_ajaxlogin.sqldump.sql
a 20161218.124010/laravel_asgard.sqldump.sql
a 20161218.124010/laravel_canvas.sqldump.sql
a 20161218.124010/laravel_child.sqldump.sql
a 20161218.124010/laravel_clumsy_cms.sqldump.sql
a 20161218.124010/laravel_dell.sqldump.sql
a 20161218.124010/laravel_jesusnames.sqldump.sql
a 20161218.124010/laravel_learn_asgard.sqldump.sql
a 20161218.124010/laravel_pyro.sqldump.sql
a 20161218.124010/laravel_quickstart.sqldump.sql
a 20161218.124010/laravel_ren4water.sqldump.sql
a 20161218.124010/laravel_tmp.sqldump.sql
a 20161218.124010/learning_laravel_tickets.sqldump.sql
a 20161218.124010/mamix_development.sqldump.sql
a 20161218.124010/mamix_production.sqldump.sql
a 20161218.124010/mamix_test.sqldump.sql
a 20161218.124010/mamixlive_development.sqldump.sql
a 20161218.124010/mysql.sqldump.sql
a 20161218.124010/oct_blog.sqldump.sql
a 20161218.124010/oct_builder.sqldump.sql
a 20161218.124010/oct_chairs.sqldump.sql
a 20161218.124010/oct_pages.sqldump.sql
a 20161218.124010/oct_relationship.sqldump.sql
a 20161218.124010/oct_rhytreat.sqldump.sql
a 20161218.124010/oct_todo.sqldump.sql
a 20161218.124010/rails_cms_development.sqldump.sql
a 20161218.124010/ray_cms.sqldump.sql
a 20161218.124010/raymond_cms_development.sqldump.sql
a 20161218.124010/rhytreat_development.sqldump.sql
a 20161218.124010/searchsite_development.sqldump.sql
a 20161218.124010/searchsite_test.sqldump.sql
a 20161218.124010/sharetribe_development.sqldump.sql
a 20161218.124010/sharetribe_production.sqldump.sql
a 20161218.124010/sharetribe_test.sqldump.sql
a 20161218.124010/silverstripe.sqldump.sql
a 20161218.124010/typiwater.sqldump.sql
a 20161218.124010/wordpress_fresh.sqldump.sql
a 20161218.124010/wordpress_test.sqldump.sql
a 20161218.124010/wp_acf.sqldump.sql
a 20161218.124010/wp_blumenhaus.sqldump.sql
a 20161218.124010/wp_blumenhaus_new.sqldump.sql
a 20161218.124010/wp_casa.sqldump.sql
a 20161218.124010/wp_cpt.sqldump.sql
a 20161218.124010/wp_dell.sqldump.sql
a 20161218.124010/wp_goetzpartner.sqldump.sql
a 20161218.124010/wp_grunig.sqldump.sql
a 20161218.124010/wp_listing.sqldump.sql
a 20161218.124010/wp_philippinedev.sqldump.sql
a 20161218.124010/wp_quo.sqldump.sql

Compressed to: /Users/rsusbal/tmp/DB_BACKUP.20161218.124010.tar.gz 15402431
Done.
```