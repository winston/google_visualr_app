# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gv_demo_session',
  :secret      => 'a91492337daf6a8ceab85b72196146a3d35d08ed2833be1b09e033c16042e034c50462961be8ed7f5931b808248b308dc3e3910df35b75b41aa059e44ed24e17'
}


# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store