# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :rspec
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
end

def test_success_and_title name, title = name.capitalize.gsub(/_/," ") 
  describe "GET '#{name}'" do
    it "should be successful" do
      get name
      response.should be_success
    end

    it "should have the right title" do
      get name
      response.should have_selector("title", :content => title)
    end
  end
end
