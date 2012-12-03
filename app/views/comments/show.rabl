object @comment
attributes :id, :content, :parent
child :author do
  attributes :id, :name, :profile_img_url
  glue @comment do
    attribute :qualification
  end
end
code :created_at do |comment|
  comment.created_at.to_i
end
