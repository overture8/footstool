class FootstoolGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory "db/views"
      m.template "footstool.yml", "config/footstool.yml"
    end
  end
end
