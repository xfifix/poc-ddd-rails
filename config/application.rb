require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PocDddRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    # config.paths.add 'packages/*/app/ui/views', glob: '**/*'
    config.paths['app/views'] = Dir[Rails.root.join('packages/*/app/ui/views/')]
    config.load_defaults 7.0
    config.autoloader = :zeitwerk
    config.eager_load = true
    config.paths['config/routes.rb'] = Dir[Rails.root.join('packages/*/config/routes.rb'), Rails.root.join('config/routes.rb')]
    #  config.eager_load_paths += Dir.glob(Rails.root.join('packages/*/app/application/*'))
    # config.eager_load_paths += Dir.glob(Rails.root.join('packages/*/app/domain/*'))
    #config.eager_load_paths += Dir.glob(Rails.root.join('packages/*/app/infrastructure/*'))
    #  config.autoload_paths += Dir[Rails.root.join('packages/*/app/ui/controllers/product_controller.rb')]


    #    config.autoload_paths += Dir[Rails.root.join('packages/*/app/application/command/handler/'), Rails.root.join('packages/*/app/application/command/message/')]
    #config.autoload_paths += Dir[Rails.root.join('package/*/app/application/')]

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

  end
end

