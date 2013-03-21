Deface::Override.new(:virtual_path => "spree/checkout/edit",
                     :name => "sdt_checkout_form_clear",
                     :insert_bottom => "[data-hook='checkout_form_wrapper']",
                     :text => "<div class='clear'></div>",
                     :disabled => false)

