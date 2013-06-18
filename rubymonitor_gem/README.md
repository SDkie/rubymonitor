Installation:

add to Gemfile of ROR application:

      gem 'rubymonitor'

Install Gem:

      gem install rubymonitor-0.0.1.gem

add to config/environments/production.rb:

      config.middleware.use Rubymonitor,
      :URL => "server URL"
      
example:

      config.middleware.use Rubymonitor,
      :URL => "http://0.0.0.0:2000/exception_logs"
