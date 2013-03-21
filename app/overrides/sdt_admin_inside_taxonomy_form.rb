Deface::Override.new(
    :virtual_path => "spree/admin/taxonomies/_form",
    :insert_bottom => "[data-hook='admin_inside_taxonomy_form']",
    :partial => "spree/admin/taxonomies/show_on_homepage_field",
    :name => "sdt_admin_inside_taxonomy_form")