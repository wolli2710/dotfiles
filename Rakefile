#
# author: Wolfgang Vogl
#
# Rakefile to open up a rails server and a node.js server in one terminal without navigation
# usage: place the Rakefile in the Home directory. to start simply open a terminal and type rake
#

task :start do
  Dir.chdir("#{Dir.home}")
  Dir.chdir("~/path_to_rails_app")
  exec "gnome-terminal --tab --command='node ~/path_to_nodejs_app/server.js' --tab -x sh -c 'rails s'"
end

Rake::Task[:start].invoke
