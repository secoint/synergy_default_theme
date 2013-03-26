class Spree::PageSweeper < ActionController::Caching::Sweeper
  observe Spree::Page
  def after_create(page)
    expire_cache_for(page)
  end

  def after_update(page)
    expire_cache_for(page)
  end

  def after_destroy(page)
    expire_cache_for(page)
  end
  
  private
  
  def expire_cache_for(page)
    expire_fragment('footer_menu')
  end
end
