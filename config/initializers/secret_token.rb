# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#SampleApp::Application.config.secret_key_base = '141e5b2a950cf54c9467307cd5e295ae49bd82b7a546c56f89fbd4f8dcf686ea72b612801d2ee8e8a83288cab1fee392d3e078b82f9433755b70c28895975760'


# This is from the tutorial at:
# http://ruby.railstutorial.org/chapters/static-pages#fnref-3_2
# This will dynamically generate the secret_key.

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

SampleApp::Application.config.secret_key_base = secure_token
