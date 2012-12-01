class Comment < ActiveRecord::Base
  attr_accessible :author_id, :content, :qualification
end
