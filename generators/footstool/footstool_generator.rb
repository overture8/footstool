class FootstoolGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory "db/couch"
      m.template "footstool.yml", "config/footstool.yml"
      m.template "footstool_initializer.rb", "config/initializers/footstool.rb"
    end
  end
end
