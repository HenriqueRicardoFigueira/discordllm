# frozen_string_literal: true

# rubocop:disable Style/Documentation
require_relative 'boot'
require_relative 'boot'
require 'rails/all'
require 'good_job/engine' # <= Add this line

require 'rails/all'
Bundler.require(*Rails.groups)
# This is the main application class for the Discordllm application.
module Discordllm
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
# rubocop:enable Style/Documentation
