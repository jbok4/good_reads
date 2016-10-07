Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
  scope: 'email',
  info_fields: 'email'

  #export FACEBOOK_KEY=572478409604589
  #export FACEBOOK_SECRET=40ac2f5c2f0d49df271a075536b434df
end