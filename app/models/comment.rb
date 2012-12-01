class Comment < ActiveRecord::Base
  attr_accessible :content, :qualification
  belongs_to :author
end
