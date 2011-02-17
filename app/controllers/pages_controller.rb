class PagesController < ApplicationController
  
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end

  def sitemap
    @title = "Sitemap"
  end
 
  def references
    @title = "References"
  end
  
end
