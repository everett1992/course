# application.rb

require './org'
require 'yaml'

class Object
  def try method
    send method if respond_to? method
  end
end

class String
  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  def red
    colorize(31)
  end

  def green
    colorize(32)
  end

  def yellow
    colorize(33)
  end

  def pink
    colorize(35)
  end
end


CONFIG = YAML.load(File.open('config.yml', 'r'))
