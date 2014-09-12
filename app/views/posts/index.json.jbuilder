json.posts @posts do |post|
  json.extract! post, :created_at, :title, :body
  json.picture_url asset_url(post.picture)
end