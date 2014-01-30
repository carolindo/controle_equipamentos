# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_controle_equipamentos_session',
  :secret      => '691fe460cfb71b9723a0965b503bc7fd28a86e0a65d99f67f3bb5132b5932498d79aa3fb1f809d8f331bb3d6ec5a00a8a1f1879708281993728a700b81f1b1c4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
