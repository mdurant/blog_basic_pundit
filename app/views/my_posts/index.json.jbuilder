json.array!(@my_posts) do |my_post|
  json.extract! my_post, :id, :post, :comment
  json.url my_post_url(my_post, format: :json)
end
