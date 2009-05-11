# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ScriptureAssistant_session',
  :secret      => 'ad88d344d83aedf4a71428da5757323d59c476dce66709fae3aee38ca780c0715258b8160887ef1436862b9037db871b1c18d911b80dcbacf7cd7a8cd42e2774'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
