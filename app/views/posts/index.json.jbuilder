json.posts @posts do |post|
  json.title post.title
  json.categories.id post.categories_id
  json.description post.description
  json.content post.content
end