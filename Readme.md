# Railscamp Tee 9: The Getaway

A website about a t-shirt, lovingly crafted by Tim Lucas (@toolmantim) for [Railscamp 11](http://railscamps.org/#goldcoast_jun_2012).

## Notes

* As far as typefaces go, the two chunky display typefaces are the lovely new typefaces [Girga](http://www.myfonts.com/fonts/dstype/girga/) and [Jocham](http://www.myfonts.com/fonts/hubertjocham/jocham/), and the third is the open-source [Ostrich Sans](http://www.theleagueofmoveabletype.com/ostrich-sans).
* [Compass](http://compass-style.org/) command line tool is used for compiling the CSS, mainly for the CSS vendor prefixing (incuding the animations) and the data-uri embedding. See the Rakefile for the command.
* The SCSS file is in the public folder. Sharing is caring.
* A few lines of Sinatra helpers gives us asset timestamping and long-expires.
* ETag, Rack::Cache, Memcached and Heroku keeps things snappy.

## Previous tees

v9 is the final edition in a long series of railscamp tee projects:

* [v8](http://www.flickr.com/photos/awws/6768658325/) - photo
* [v7](http://railscampteev7.toolmantim.com/) - minisite
* [v6](http://www.flickr.com/photos/lachlanhardy/4129353792/) - photo
* [v5](http://railscampteev5.toolmantim.com/) - minisite
* [v3](http://railscampteev3.heroku.com/) - minisite
* [v2](http://www.redbubble.com/people/railscamp/works/1191613-rails-camp-tee-v2-1) - redbubble
* [v1(ish)](http://www.redbubble.com/people/railscamp/works/1135507-rails-camp-tee-white-edition) - redbubble

## Development

Firstly, you'll need [Ruby 1.9](http://www.ruby-lang.org/en/downloads/) and [bundler](http://gembundler.com/). Once you've got those:

    git clone https://toolmantim@github.com/toolmantim/railscampteev9.git
    cd railscampteev9
    bundle

To run the local server:

    foreman start
    
To compile the CSS:

    rake

## License

Everything in the entire site is MIT licensed, do what you like with it,
except for the content in public/fonts. See the MIT-LICENSE for the full license.
