require 'sinatra'
require 'digest/md5'

set :static_cache_control, [:public]

# Pre-calculate all the asset SHA's
set :assets, Dir["*.css", "**/*.{png,svg,css}"].inject({}) {|acc, file|
  acc[file] = Digest::MD5.file(file).hexdigest
  acc
}

helpers do
  def asset_path(asset)
    sha = settings.assets["public/#{asset}"]
    asset.sub(/\.(.*?)$/, ".#{sha}." + '\1')
  end
end

get '/' do
  erb(:"index.html", layout:false).tap do |html|
    etag Digest::MD5.hexdigest(html)
    cache_control :public
  end
end

# Serve up the sha'd asset URLs, regardless of the actual sha value
settings.assets.each_pair do |path, sha|
  p = Pathname.new(path)
  get Regexp.new('/' + Regexp.escape(p.to_s).sub(/(\\\..*?)$/, '\\\.' + sha + '\1').sub('public/','')) do
    etag sha
    expires 60*60*24*365, :public
    content_type Rack::Mime.mime_type(File.extname(path))
    send_file path
  end
end
