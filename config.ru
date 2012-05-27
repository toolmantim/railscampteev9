require 'rack/deflater'
use Rack::Deflater

require './app'
run Sinatra::Application
