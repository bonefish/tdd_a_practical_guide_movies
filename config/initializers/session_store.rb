# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tdd_a_practical_guide_movie_session',
  :secret      => '07a3c0cb3316b44cb9f215e817533e19b36956382908ba1be2300bd6493b38a7979b87e665b36a5449a4d7d938674e056035fd50529fa1c768fb9f8912f9617a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
