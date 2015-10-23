require 'erb'
require_relative 'settings'

module Template
  TEMPLATES_DIR = "templates/" unless defined? TEMPLATES_DIR

  class ThingsForERB
    def initialize(hash)
      @hash = hash.dup
    end
    def method_missing(meth, *args, &block)
      @hash[meth.to_s]
    end
    def get_binding
      binding
    end
  end

  def self.create_template(template, destination_directory = ".", variables = {})

    variables.keys.each do |key|
      variables[(key.to_s rescue key) || key] = variables.delete(key)
    end

    vars = (Settings.read).merge(variables)
    file = File.new("#{TEMPLATES_DIR}/#{template}.erb").read
    input = ERB.new(file, nil, "%")
    output = input.result(ThingsForERB.new(vars).get_binding)

    File.write("#{destination_directory}/#{template}", output)
  end
end
