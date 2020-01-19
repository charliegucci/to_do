source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'


gem 'rails', '~> 6.0.2', '>= 6.0.2.1'



gem 'puma', '~> 4.1'

gem 'sass-rails', '>= 6'

gem 'webpacker', '~> 4.0'

gem 'turbolinks', '~> 5'
gem 'devise'

gem 'jbuilder', '~> 2.7'

gem 'bootstrap', '~> 4.4', '>= 4.4.1'
gem 'jquery-rails'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'stock_quote', '~> 3.0.0'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sqlite3', '~> 1.4'
end

group :production do
gem 'pg', '~> 0.21.0'
gem 'rails_12factor', '~> 0.0.3'


end

group :test do
  
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  
  gem 'webdrivers'
end


