object @comment
attributes :id, :content, :parent
node :author do |c|
  a = c.author
  author_attrs = { id: a.id, name: a.name, profile_img_url: a.profile_img_url }
  author_attrs.merge qualification: c.qualification
end
code :created_at do |comment|
  comment.created_at.to_i
end
