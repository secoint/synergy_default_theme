Spree::ProductsHelper.module_eval do
  def variant_price_diff(variant)
    diff = variant.amount_in(current_currency) - variant.product.amount_in(current_currency)
    return nil if diff == 0
    if diff > 0
      "(+ #{Spree::Money.new(diff.abs, { :currency => current_currency })})"
    else
      "(- #{Spree::Money.new(diff.abs, { :currency => current_currency })})"
    end
  end

  def product_description(product)
    raw(product.description)
  end

  def large_sizes
    return @large_sizes if @large_sizes
    match = Spree::Image.attachment_definitions[:attachment][:styles][:large].match(/(\d+)x(\d+)/)
    @large_sizes = {:width => match[1], :height => match[2]}
  end
end
