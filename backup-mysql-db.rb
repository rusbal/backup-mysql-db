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

db_extra_config = "--defaults-extra-file=#{Settings::EXTRA_MYSQL_CONFIG}"

tmp_dir = File.join(Settings::BACKUP_DIR, Time.new.strftime("%Y%m%d.%H%M%S"))
Dir.mkdir(tmp_dir) unless File.exists?(tmp_dir)

puts "\n--- mysqldump ---"
response = Helper::exec_command "echo 'show databases' | mysql #{db_extra_config}"
res = response.split "\n"
res = res.select { |db| not Settings::IGNORE_TABLES.include? db }

res.each do |db|
  output = File.join(tmp_dir, "#{db}.sqldump.sql")
  Helper::exec_command "mysqldump #{db_extra_config} #{db} -r #{output}"
  puts "#{db}: #{File.size(output)}"
end

puts "\n--- tar ---"
compressed_file = Helper::compress tmp_dir, 'DB_BACKUP'
puts "\nCompressed to: #{compressed_file} #{File.size(compressed_file)}"

Helper::exec_command "rm -rf #{tmp_dir}"
puts "Done."
