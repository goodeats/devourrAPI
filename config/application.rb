require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DevourrAPI
  class Application < Rails::Application

    config.generators do |g|
      g.factory_girl false
    end

    config.middleware.use Rack::Cors do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :patch, :put, :delete, :options]
      end
    end

    config.active_record.raise_in_transactional_callbacks = true
  end
end
