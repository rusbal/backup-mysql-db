#
# BACKUP MYSQL DB
#
# Author: Raymond Usbal <raymond@philippinedev.com>
# Date: 18 December 2016
#

module Settings

  #
  # Database backups will be created on this directory
  #
  BACKUP_DIR = '/Users/rsusbal/tmp'

  #
  # This configuration file contains client configuration for MySQL.
  # MySQL user and password are saved here.
  #
  # Usage: mysql --defaults-extra-file=/path/to/.extra.my.cnf
  # Sample contents:
  # [client]
  # user = root
  # password = root1
  #
  EXTRA_MYSQL_CONFIG = File.expand_path('../.extra.my.cnf', __FILE__)

  #
  # List of ignore databases which will not be processed.
  #
  IGNORE_TABLES = ['Database', 'information_schema', 'performance_schema']

end
