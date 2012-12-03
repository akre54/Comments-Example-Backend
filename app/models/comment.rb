class Comment < ActiveRecord::Base
  attr_accessible :content, :qualification, :parent
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
end
