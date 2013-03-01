module Spree
  module OrdersHelper
    def truncate(text, options = {})
      super(strip_tags(text), options)
    end
  end
end