begin
  env = ENV['RAILS_ENV'] || 'development'
  CDB_CONFIG = YAML::load(ERB.new(IO.read(RAILS_ROOT + "/config/footstool.yml")).result)[env]
rescue
  raise "There was a problem with your config/footstool.yml file. Check and make sure it's present and the syntax is correct."
end

