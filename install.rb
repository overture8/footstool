require 'rails_generator'
require 'rails_generator/scripts/generate'
Rails::Generator::Scripts::Generate.new.run(['footstool'], :destination => RAILS_ROOT)
