class AddShowOnMainPageFlagToTaxonomies < ActiveRecord::Migration
  def change
    add_column :spree_taxonomies, :show_on_homepage, :boolean, :null => false, :default => false
  end
end
