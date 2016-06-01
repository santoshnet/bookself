ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "google.mail.com",
  :user_name            => "simplenet2016",
  :password             => "simple2016",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
