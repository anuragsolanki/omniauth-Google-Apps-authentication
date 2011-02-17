require 'openid/store/filesystem'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_apps, OpenID::Store::Filesystem.new('/tmp'), :domain => 'vinsol.com', :name => 'admin'
end

# This makes it so that going to /auth/admin from our application will have us authenticate 
# through our company's Google Apps account (and ONLY our company's accounts will work).