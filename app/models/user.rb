# == Schema Information
# Schema version: 20110220200937
#
# Table name: users
#
#  id           :integer         not null, primary key
#  email        :string(255)
#  account_name :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class User < ActiveRecord::Base
  attr_accessible :email, :account_name
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :account_name, :presence => true ,
            :length   => { :maximum => 10 },
            :uniqueness => true
  validates :email, :presence => true ,
            :format   => { :with => email_regex },
            :uniqueness => { :case_sensitive => false }
end
