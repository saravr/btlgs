class Category < ActiveRecord::Base
  has_many :categories
  attr_accessible :name
end
