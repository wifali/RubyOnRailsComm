require 'spec_helper'

describe PagesController do
  
  render_views

  test_success_and_title 'home'
  test_success_and_title 'contact'
  test_success_and_title 'sitemap'
  test_success_and_title 'references'
  
end