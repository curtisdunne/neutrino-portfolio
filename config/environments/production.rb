Rails.application.configure do
  config.cache_classes = true

  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?

  config.assets.js_compressor = :uglifier
  config.assets.compile = false

  config.log_level = :debug

  # Prepend all log lines with the following tags.
  config.log_tags = [ :request_id ]

  # config.action_mailer.perform_caching = false
  #
  # config.action_mailer.performs_deliveries = true
  # config.action_mailer.raise_delivery_errors = true
  # config.action_mailer.default_url_options = { host: ENV['GMAIL_DOMAIN'] }
  # config.action_mailer.delivery_method = :smtp

  # doesn't have to be Heroku, but you get the idea.
  # config.action_mailer.default_url_options = { :host => 'neutrino-portfolio.herokuapp.com' }
  # Rails.application.routes.default_url_options[:host] = 'neutrino-portfolio.herokuapp.com'
  #
  # config.action_mailer.delivery_method = :smtp
  # config.action_mailer.performs_deliveries = true
  # config.action_mailer.raise_delivery_errors = false
  # config.action_mailer.default :charset => "utf-8"

  # config.action_mailer.smtp_settings = {
  #   address: "smtp.gmail.com",
  #   port: 587,
  #   domain: ENV["GMAIL_DOMAIN"],
  #   authentication: "plain",
  #   enable_starttls_auto: true,
  #   user_name: ENV["GMAIL_USERNAME"],
  #   password:ENV["GMAIL_PASSWORD"]
  # }

  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise delivery errors.
  # config.action_mailer.raise_delivery_errors = false

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Use a different logger for distributed setups.
  # require 'syslog/logger'
  # config.logger = ActiveSupport::TaggedLogging.new(Syslog::Logger.new 'app-name')

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  config.action_cable.allowed_request_origins = ['https://neutrino-portfolio.herokuapp.com',
                                                 'http://neutrino-portfolio.herokuapp.com',
                                                 'https://curtisdunne.com',
                                                 'http://curtisdunne.com']

  config.action_cable.url = "wss://neutrino-portfolio.herokuapp.com/cable"

end
