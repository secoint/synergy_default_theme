if defined?(Spree::AdvancedCart) && Spree::AdvancedCart::Config
  Spree::AdvancedCart::Config.set(:enable_shipping_cost_calculation => false)
end