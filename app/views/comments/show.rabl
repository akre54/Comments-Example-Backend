object @comment
attributes :id, :content, :parent
node(:author) { |comment|
  comment.author
}
