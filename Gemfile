source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.13'


gem 'pg', group: :production
gem 'bcrypt-ruby', require: 'bcrypt'


gem 'activerecord-reputation-system', require: 'reputation_system'
gem 'jquery-rails'
gem 'unicorn-rails'
gem 'coveralls', require: false
gem 'simplecov', :require => false
gem 'travis-lint'
gem 'route_downcaser'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'jasmine'
  gem 'terminal-notifier-guard'
  gem 'guard-rspec'
  gem 'sqlite3'             # Heroku doesn't run sqlite3, but Postgres. However, we can use Postgres locally

  # gem 'rspec-rails'         #included for testing

  # gem 'factory_girl_rails'  #included for testing

  # gem 'database_cleaner', '< 1.1.0'   #included for testing

  # gem 'capybara'

  # gem 'launchy'
  gem 'pry-rails'           # Causes rails console to open pry
                            # https://github.com/rweng/pry-rails
  gem 'pry-debugger'        # Adds step, next, finish, and continue commands and breakpoints
                            # https://github.com/nixme/pry-debugger
  gem 'pry-stack_explorer'  # Navigate the call-stack
                            # https://github.com/pry/pry-stack_explorer
  gem 'annotate'            # Annotate all your models, tests, fixtures, and factories
                            # https://github.com/ctran/annotate_models
  gem 'quiet_assets'        # Turns off the Rails asset pipeline log
                            # https://github.com/evrone/quiet_assets
  # gem 'better_errors'     # Replaces the standard Rails error page with a much better and more useful error page
                            # This gem causes errors with rspec
                            # https://github.com/charliesome/better_errors
  gem 'binding_of_caller'   # Advanced features for better_errors advanced features (REPL, local/instance variable inspection, pretty stack frame names)
                            # https://github.com/banister/binding_of_caller
  gem 'meta_request'        # Supporting gem for Rails Panel (Google Chrome extension for Rails development).
                            # https://github.com/dejan/rails_panel/tree/master/meta_request
  gem 'dotenv'
  gem 'dotenv-rails'
                            # Diagrams your models. NOTE! $ brew install graphviz
  gem 'rails-erd'                 # https://github.com/voormedia/rails-erd

end


group :test do              #this is our testing suite.
  gem 'faker'               #http://everydayrails.com/2012/03/12/testing-series-rspec-setup.html
  gem 'guard-rspec'         #the everyday rails book also recommends the "Forgery" gem as an alternative
  gem 'rspec-rails'         #included for testing
  gem 'factory_girl_rails'  #included for testing
  gem 'database_cleaner'    #included for testing
  gem 'capybara'
  gem 'launchy'
  gem 'cucumber-rails', :require => false
end



