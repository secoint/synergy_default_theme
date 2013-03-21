Deface::Override.new(
    :virtual_path => "spree/shared/_products",
    :replace => "[data-hook='products_list_item']",
    :partial => "spree/shared/product",
    :name => "sdt_products_list_item")