require 'yaml'
require 'version_sorter'

module Settings
  FILE = "settings.yml" unless defined? FILE

  def self.read
    YAML.load_file(FILE)
  end

  def self.save(data)
    File.write(FILE, YAML.dump(data))
  end

  def self.add_version(version)
    input = self.read

    input['versions'] << version unless input['versions'].include?(version)
    input['versions'] = VersionSorter.rsort(input['versions'])

    self.save(input)
  end

  def self.remove_version(version)
    input = self.read

    input['versions'].delete(version)
    input['versions'] = VersionSorter.rsort(input['versions'])

    self.save(input)
  end
end
