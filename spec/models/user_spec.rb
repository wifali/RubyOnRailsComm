require 'spec_helper'

describe User do
  
  before(:each) do
    @attr = { :account_name => "wifali", :email => "wifali@arcor.de" }
  end
  
  it "should require an account name" do
    no_name_user = User.new(@attr.merge(:account_name => ""))
    no_name_user.should_not be_valid
  end
  
  it "should require an email" do
    no_email_user = User.new(@attr.merge(:email => ""))
    no_email_user.should_not be_valid
  end
  
 it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email => address))
      valid_email_user.should be_valid
    end
  end
  
  it "should reject account names that are too long" do
    long_name = "a" * 11
    long_name_user = User.new(@attr.merge(:account_name => long_name))
    long_name_user.should_not be_valid
  end
   
  it "should reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email => address))
      invalid_email_user.should_not be_valid
    end
  end
  
  it "should reject duplicate email addresses" do
    user1 = User.create!(@attr.merge(:email => "some@mail.cc"))
    user2 = User.new(@attr.merge(:email => "some@mail.cc"))
    user2.should_not be_valid
  end
  
  it "should reject duplicate account names" do
    user1 = User.create!(@attr.merge(:account_name => "baba"))
    user2 = User.new(@attr.merge(:account_name => "baba"))
    user2.should_not be_valid
  end
   
end