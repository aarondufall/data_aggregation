#!/usr/bin/env ruby

script_dir = File.join __dir__, 'scripts'

script_filename = 'uninstall-db.sh'
script_filepath = File.join script_dir, script_filename
puts system(script_filepath)

script_filename = 'install-db.sh'
script_filepath = File.join script_dir, script_filename
puts system(script_filepath)

