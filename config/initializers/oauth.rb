Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_APP_ID'], ENV['TWITTER_APP_SECRET']
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']
  provider :google_oauth2, ENV['GOOGLE_APP_ID'], ENV['GOOGLE_APP_SECRET']

  configure do |config|
    config.path_prefix = '/users/auth'
  end

  on_failure do |env|
    # we need to setup env
    if env['omniauth.params'].present
      env['devise.mapping'] = Devise.mappings[:user]
    end
    Devise::OmniauthCallbacksController.action(:failure).call(env)
  end
end
