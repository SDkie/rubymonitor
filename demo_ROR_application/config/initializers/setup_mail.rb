ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "asciicasts.com",  
  :user_name            => "kumarsukhani@gmail.com",  
  :password             => "lol",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
} 
