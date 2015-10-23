require 'fileutils'

module Version
  def self.list_versions(current_directory = ".", separator = ", ")
    directories = Dir.entries(current_directory).select do |entry|
      File.directory? File.join(current_directory, entry) and self.check_version_syntax?(entry)
    end
    directories.join(separator)
  end

  def self.check_version_exists?(version)
    File.directory?(version)
  end

  def self.check_version_syntax?(version)
    version =~ /([0-9]\.)?[0-9]\.[0-9]/
  end

  def self.create_version(version)
    Dir.mkdir(version) unless File.exists?(version)
  end

  def self.remove_version(version)
    FileUtils.rm_rf(version)
  end
end
