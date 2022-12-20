require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FirstLove
  class Application < Rails::Application

    config.load_defaults 7.0
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore
    
    config.action_dispatch.cookies_same_site_protection = true
  
  end
end
