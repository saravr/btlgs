class Category < ActiveRecord::Base
  has_many :auto_cats
  attr_accessible :name
end
