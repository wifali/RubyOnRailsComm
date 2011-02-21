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
  
  def git
    @title = "Git"
  end
  
  def heroku
    @title = "Heroku"
  end
  
  def static_pages
    @title = "Static pages"
  end
  
  def models
    @title = "Models"
  end
  
  def other_tools
    @title = "Other tools"
  end
  
  def projectwide_stuff
    @title = "Projectwide stuff"
  end
  
end
