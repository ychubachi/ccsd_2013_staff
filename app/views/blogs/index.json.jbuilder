json.array!(@blogs) do |blog|
  json.extract! blog, :title, :contents, :date
  json.url blog_url(blog, format: :json)
end
