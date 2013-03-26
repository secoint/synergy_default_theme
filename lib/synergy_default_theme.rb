require 'spree_core'

module Spree
  module SynergyDefaultTheme
    class Engine < Rails::Engine

      engine_name 'synergy_default_theme'

      config.autoload_paths += %W(#{config.root}/lib)

      initializer "spree.synergy_default_theme.environment", :before => :load_config_initializers do |app|
        Spree::SynergyDefaultTheme::Config = Spree::SynergyDefaultThemeConfiguration.new
      end

      def self.activate
        Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
          Rails.env.production? ? require(c) : load(c)
        end
        
        Spree::Admin::PagesController.cache_sweeper Spree::PageSweeper
        Spree::Admin::TrackersController.cache_sweeper Spree::TrackerSweeper
        
        if defined?(Spree::RecentlyViewed) && Spree::RecentlyViewed::Config.instance
          Spree::RecentlyViewed::Config.set :recently_viewed_products_max_count => 3
        end
        
        if Spree::Config
          Spree::Config.set :products_per_page => 9
        end

        Spree::Image.attachment_definitions[:attachment].merge!({
          :styles => {
                  :mini    => '40x40>',
                  :small   => '120x120>',
                  :product => '200x200>',
                  :large   => '600x600>'
          }
        })
      end

      config.to_prepare &method(:activate).to_proc
    end
  end
end