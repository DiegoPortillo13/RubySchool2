require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Meeho
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.i18n.default_locale = :'es-MX'

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_senttings = {
      adress:            'smtp.gmail.com',
      port:               587,
      domain:             'gmail.com',
      user_name:          'meeho.skyline',
      password:           'gusanonoloveas',
      authentication:     'plain',
      enable_starttls_auto: true
    }
  end
end
