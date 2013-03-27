Deface::Override.new(
  :virtual_path => 'spree/products/show',
  :name => 'product_reviews',
  :disabled => true
) if defined?(SpreeReviews)