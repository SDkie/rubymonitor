Create database tables:
  
    bundle exec rake db:migrate
    
Run ROR application:
 
    Rails server
    
Generate unhandled exception:

    1. Add user entry from http://127.0.0.1:3000/users  -> success
    2. Try deleting user from http://127.0.0.1:3000/users   -> Unhandled Exception generated
