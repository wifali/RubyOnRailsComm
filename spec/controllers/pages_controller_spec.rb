require 'spec_helper'

describe PagesController do

  describe "GET 'startseite'" do
    it "should be successful" do
      get 'startseite'
      response.should be_success
    end
  end

  describe "GET 'kontakt'" do
    it "should be successful" do
      get 'kontakt'
      response.should be_success
    end
  end

end
