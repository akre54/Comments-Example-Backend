object @comment
attributes :id, :content, :parent
child(:author) {
  attributes :id, :name, :profile_img_url
}
