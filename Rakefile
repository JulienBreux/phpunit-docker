require 'rake'
require './scripts/Settings'
require './scripts/Console'
require './scripts/Version'
require './scripts/Template'

# External args
VERSION = ENV['version'] || ''

# Version's tasks
namespace :version do
  desc "Add new version"
  task :add do
    Console::display_box('Add new version')

    if Version::check_version_syntax?(VERSION)
      unless Version::check_version_exists?(VERSION)
        Version::create_version(VERSION)
        Console::display_done("Create new version: #{VERSION}")

        Settings::add_version(VERSION)
        Console::display_done("Update settings")

        Template::create_template('Dockerfile', VERSION)
        Console::display_done("Add new version")

        Template::create_template('Dockerfile', 'master')
        Console::display_done("Update master")

        Template::create_template('Makefile')
        Console::display_done("Update make")

        Template::create_template('README.md')
        Console::display_done("Update documentation")
      else
        Console::display_error("This version '#{VERSION}' already exists.")
        Console::display_info("Use another version than: " + Version::list_versions)
      end
    else
      Console::display_error("Bad version: #{VERSION}")
      Console::display_info("Please use a good version. (Eg: 1.0.0)")
    end
  end

  desc "Remove version"
  task :remove do
    Console::display_box('Remove version')

    if Version::check_version_syntax?(VERSION)
      if Version::check_version_exists?(VERSION)

        Version::remove_version(VERSION)
        Console::display_done("Remove version: #{VERSION}")

        Settings::remove_version(VERSION)
        Console::display_done("Update settings")

        Template::create_template('Dockerfile', 'master')
        Console::display_done("Update master")

        Template::create_template('Makefile')
        Console::display_done("Update make")

        Template::create_template('README.md')
        Console::display_done("Update documentation")
      else
        Console::display_error("This version '#{VERSION}' does not exists.")
        Console::display_info("Use a version in: " + Version::list_versions)
      end
    else
      Console::display_error("Bad version: #{VERSION}")
      Console::display_info("Please use a good version. (Eg: 1.0.0)")
    end
  end
end

# Default task
task :default => 'version:add'
