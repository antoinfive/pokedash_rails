json.array!(@pocketmonsters) do |pocketmonster|
  json.extract! pocketmonster, :id, :name, :image_url
  json.url pocketmonster_url(pocketmonster, format: :json)
end
