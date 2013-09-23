$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bundler'

testing = ARGV.join(' ') =~ /spec/
begin
  if testing
    require 'guard/motion'
    Bundler.require :default, :spec
  else
    Bundler.require
  end
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'TouchRoom'
  app.redgreen_style = :full if testing
end

#MotionBundler.setup
