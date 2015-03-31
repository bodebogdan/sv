<<<<<<< HEAD
ENV["RAILS_ENV"] ||= "test"
=======
ENV['RAILS_ENV'] ||= 'test'
>>>>>>> f8df8d3ea436027881e25fa728f8d93a0d3d35bf
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
<<<<<<< HEAD
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
=======
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
>>>>>>> f8df8d3ea436027881e25fa728f8d93a0d3d35bf
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
