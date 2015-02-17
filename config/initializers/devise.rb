Devise.setup do |config|

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'


  require 'devise/orm/mongoid'

  config.case_insensitive_keys = [ :email ]

  config.strip_whitespace_keys = [ :email ]

  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10

  config.expire_all_remember_me_on_sign_out = true


  config.password_length = 8..128

  config.reset_password_within = 6.hours


  #config.secret_key = ENV['DEVISE_SECRET_KEY']
  config.secret_key = 'a824d168f6bfcf135f6a65e5bbc63d600f8a3e9e4eb858d0858580a2b17eeb8373db987b205bb44584d4bf2a5b5b45602a5a3ef90928ec217fb2aecd44cc7198'

end
