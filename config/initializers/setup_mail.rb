ActionMailer::Base.smtp_settings = {
  :address              => 'mail.agilityperu2014.com',
  :port                 => 587,
  :domain               => 'agilityperu2014.com',
  :user_name            => 'web@agilityperu2014.com',
  :password             => 'agility99',
  :authentication       => 'plain',
  :enable_starttls_auto => false 
}

