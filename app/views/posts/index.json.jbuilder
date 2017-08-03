json.posts @posts do |post|
  json.title post.title
  json.description post.description
  json.content post.content
end