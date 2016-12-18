#
# BACKUP MYSQL DB
#
# Author: Raymond Usbal <raymond@philippinedev.com>
# Date: 18 December 2016
#

module Helper

  #
  # Executes a system command and aborts when error occurred.
  #
  def self.exec_command(command)
    response = `#{command}`
    if $?.exitstatus > 0
      puts '-' * 100
      puts "Exit Status: #{$?.exitstatus}"
      puts "Error occurred when executing:\n#{command}"
      puts '-' * 100
      abort "Aborting."
    end
    response
  end

  #
  # Compresses a directory to the name of the tar_prefix.directory.tar.gz.
  # Uses the command `tar -czvf`
  #
  def self.compress(dir, tar_prefix = nil)
    if tar_prefix
      tar_prefix += tar_prefix.end_with?('.') ? '' : '.'
    end

    basedir = File.basename(dir)
    output_tar = "#{tar_prefix}#{basedir}.tar.gz"
    output_dir = File.absolute_path(File.join(dir, '..'))
    compressed_file = File.join(output_dir, output_tar)
    exec_command "cd #{output_dir} && tar -czvf #{compressed_file} #{basedir}"
    compressed_file
  end
end
