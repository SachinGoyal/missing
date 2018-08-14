json.extract! blog, :id, :user_id, :tittle, :description, :image, :video, :created_at, :updated_at
json.url blog_url(blog, format: :json)
