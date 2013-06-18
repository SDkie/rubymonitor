require 'json'
require 'net/http'
require 'uri'
require 'exception_log'

class Rubymonitor  
    def initialize(app, options = {})
        @app, @options = app, options
    end
   
    def call(env)
      @app.call(env)
      rescue Exception => exception
		begin
			expt=Exception_log.new
			expt.exceptionlog(exception,env)
		rescue Exception => exception
			puts exception.message.inspect
		end
      end
end
