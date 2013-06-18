Create database tables:
  
    bundle exec rake db:migrate
    
Run logging server:
 
    Rails server -p 2000
    
See the received Exception at:
  
    http://127.0.0.1:2000/exception_logs
