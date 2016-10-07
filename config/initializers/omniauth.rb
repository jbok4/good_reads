Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '572478409604589', '40ac2f5c2f0d49df271a075536b434df',
  scope: 'email',
  info_fields: 'email'

  #export FACEBOOK_KEY=572478409604589
  #export FACEBOOK_SECRET=40ac2f5c2f0d49df271a075536b434df
end