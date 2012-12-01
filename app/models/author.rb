class Author < ActiveRecord::Base
  attr_accessible :name, :profile_img_url
  has_many :comments
end
