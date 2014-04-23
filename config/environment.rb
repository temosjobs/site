# Load the Rails application.
require File.expand_path('../application', __FILE__)

# For windows error No timezone data source could be found
require 'tzinfo'

# Initialize the Rails application.
Rails.application.initialize!
