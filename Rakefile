task :default => :compile_sass

desc "Compiles the sass"
task :compile_sass do
  exec "bundle exec compass compile --sass-dir public --css-dir public --images-dir public/images -s compact --no-line-comments -r animation"
end

desc "Deploy the app"
task :deploy do
  exec "git push heroku"
end
