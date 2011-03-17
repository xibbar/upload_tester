# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_upload_tester_session',
  :secret      => '2814ecc41984a75cf58cd1184e4f7c5df31f3b8b61a4a992dfdc79b199af4544574667ded1341f76683324364eb992e9c9a0059ebc22276f65ccee4fc10fdfb6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
