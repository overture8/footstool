begin

  env = ENV['RAILS_ENV'] || 'development'

  CDB_CONFIG = YAML::load(ERB.new(IO.read(RAILS_ROOT + "/config/footstool.yml")).result)[env]

  host      = CDB_CONFIG["hostname"]      || 'localhost'
  port      = CDB_CONFIG["port"]      || '5984'
  db_prefix = CDB_CONFIG["db_prefix"] || ""
  db_suffix = CDB_CONFIG["db_suffix"] || ""
  host      = "localhost"  if host == nil
  port      = "5984"       if port == nil

rescue

  raise "There was a problem with your config/footstool.yml file. Check and make sure it's present and the syntax is correct."

else

  CDB_CONFIG = {
    :host_path => "http://#{host}:#{port}",
    :db_prefix => "#{db_prefix}",
    :db_suffix => "#{db_suffix}"
  }

  CDB_SERVER = CouchRest.new CDB_CONFIG[:host_path]
end

