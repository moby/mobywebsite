source 'https://rubygems.org'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'wdm', '>= 0.1.0' if Gem.win_platform?

gem 'jekyll', '4.2.2'
group :jekyll_plugins do
  gem 'jekyll-feed'
  gem 'jekyll-redirect-from'
  gem 'jekyll-seo-tag'
end

# FIXME: This is a workaround for a bug in rouge console lexer
#  introduced by https://github.com/rouge-ruby/rouge/pull/1779
#  more info: https://github.com/docker/docker.github.io/issues/14788
gem 'rouge', '3.27.0'
