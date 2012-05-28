$stdout.sync = true

require 'rack/deflater'
use Rack::Deflater

require 'rack/cache'
require 'dalli'
use Rack::Cache,
  metastore: Dalli::Client.new,
  entitystore: 'file:tmp/cache/rack/body',
  allow_reload: false,
  default_ttl: 60

require './app'
run Sinatra::Application
