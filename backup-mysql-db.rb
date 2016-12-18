#
# BACKUP MYSQL DB
#
# This script creates a dump file of all databases
# and compresses it to a single tar.gz file then delete the temporary dump files.
#
# Usage: ruby backup-mysql-db.rb
#
# Author: Raymond Usbal <raymond@philippinedev.com>
# Date: 18 December 2016
#
# Set database access configuration in .extra.my.cnf
#

require_relative 'helper'
require_relative 'settings'

db_command = "show databases"
db_extra_config = "--defaults-extra-file=#{Settings::EXTRA_MYSQL_CONFIG}"
response = Helper::exec_command "echo '#{db_command}' | mysql #{db_extra_config}"

ignore_from_response = ['Database', 'information_schema', 'performance_schema']

output_directory = File.join(Settings::BACKUP_DIR, Time.new.strftime("%Y%m%d.%H%M%S"))
Dir.mkdir(output_directory) unless File.exists?(output_directory)

puts '-----'
res = response.split "\n"
res.each do |db_name|
  unless ignore_from_response.include? db_name
    sqldump_file = "#{db_name}.sqldump.sql"
    output = File.join(output_directory, sqldump_file)
    Helper::exec_command "mysqldump #{db_extra_config} #{db_name} -r #{output}"
    puts "#{db_name}: #{output}"
  end
end
puts '-----'

Helper::compress output_directory, 'DB_BACKUP'

Helper::exec_command "rm -rf #{output_directory}"

puts '-----'
puts "Done."
