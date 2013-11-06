require 'omniauth-oauth'

class OmniAuth::Strategies::Drupal < OmniAuth::Strategies::OAuth
  # Give your strategy a name.
  option :name, "drupal"

  # This is where you pass the options you would pass when
  # initializing your consumer from the OAuth gem.
  option :client_options, {
  :site => "http://192.168.84.134:8080/",
  :authorize_url => 'http://192.168.84.134:8080/oauth/authorize',
  :token_url => 'http://192.168.84.134:8080/oauth/token' }

  # These are called after authentication has succeeded. If
  # possible, you should try to set the UID without making
  # additional calls (if the user id is returned with the token
  # or as a URI parameter). This may not be possible with all
  # providers.
  uid{ request.params['user_id'] }

  info do
    {
      #:name => raw_info['name'],
      #:location => raw_info['city']
    }
  end

  extra do
    {
      #'raw_info' => raw_info
    }
  end

  def raw_info
  end
end
