module Spree
  class HomeController < Spree::BaseController
    helper 'spree/products', 'spree/taxons'

    def index
      home_taxonomy = get_taxonomies.find{|t| t.show_on_homepage? }
      @taxons = home_taxonomy ? home_taxonomy.root.children : []
    end
  end
end
