require 'spec_helper'

describe PagesController do
  
  render_views

  test_success_and_title 'home'
  test_success_and_title 'contact'
  test_success_and_title 'sitemap'
  test_success_and_title 'references'
  test_success_and_title 'git'
  test_success_and_title 'heroku'
  test_success_and_title 'static_pages'
  test_success_and_title 'models'
  test_success_and_title 'other_tools'
  test_success_and_title 'projectwide_stuff',

end