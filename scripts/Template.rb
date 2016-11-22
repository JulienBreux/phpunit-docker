require 'liquid'
require_relative 'Settings'

# Template manager
module Template
  TEMPLATES_DIR = 'templates/'.freeze unless defined? TEMPLATES_DIR
  DEST_DIR = '.'.freeze unless defined? DEST_DIR

  # Create template with vars
  #
  # name      - Template name.
  # dest_dir  - Destination directory.
  # variables - Variables.
  #
  # Returns nothings.
  def self.create_template(name, dest_dir = '.', variables = {})
    variables = (Settings.read).merge(variables)
    content = Liquid::Template.parse(read_template(name))
    content.render(variables)
    write_template(dest_dir, name, content.render(variables))
  end

  # Read template.
  #
  # name - Template name.
  #
  # Returns nothings.
  def self.read_template(name)
    File.read("#{TEMPLATES_DIR}#{name}.liquid")
  end

  # Write template.
  #
  # dest_dir - Destination directory.
  # name     - Template name.
  # content  - Template output content (without vars).
  #
  # Returns nothings.
  def self.write_template(dest_dir = '.', name, content)
    File.write("#{dest_dir}/#{name}", content)
  end
end
