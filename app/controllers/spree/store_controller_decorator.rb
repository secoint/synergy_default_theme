Spree::StoreController.class_eval do
  helper 'spree/reviews' if defined?(SpreeReviews)
end