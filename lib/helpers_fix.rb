module HelpersFix
  class Railtie < Rails::Railtie
    initializer "include railties helpers" do
      helpers_paths = []
      Rails.application.railties.all do |r|
        if r.config.respond_to?(:paths) && r.config.paths.app.helpers
          helpers_paths += r.config.paths.app.helpers.to_a
        end
      end

      ActiveSupport.on_load(:action_controller) do
        config.helpers_path += helpers_paths
      end
    end
  end
end
