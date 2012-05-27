require 'sinatra'

# For Foreman
configure(:development) { STDOUT.sync = true }

get '/' do
  send_file "views/index.html"
end
