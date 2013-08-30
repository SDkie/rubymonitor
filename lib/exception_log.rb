class Exception_log
	def default
        	{ :URL=> "http://0.0.0.0:2000/exception_logs"}
	end

	def exceptionlog(exception,env)
		###get logs
		@options    = (env['rubymonitor.options'] || {}).reverse_merge(default)
		@req   = ActionDispatch::Request.new(env)	
		exception_log = Hash.new
		exception_log["URL"]=@req.url
		exception_log["Message"]=exception.class.to_s+" : "+exception.message.inspect
		exception_log["Parameters"]=@req.filtered_parameters.inspect
		exception_log["time_stamp"]= Time.now
		exception_log["count"]= 1
		exception_log["backtrace"]= exception.backtrace
	
		###POST logs
		exception_json=exception_log.to_json		
		url = URI.parse(@options[:URL])
		req = Net::HTTP::Post.new(url.path)
		req.content_type = 'application/json'
		req.body = exception_json
		res = Net::HTTP.start(url.host, url.port) {|http| http.request(req)}	
	end
end
