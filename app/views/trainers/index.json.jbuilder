json.array!(@trainers) do |trainer|
  json.extract! trainer, :id, :name, :image_url
  json.url trainer_url(trainer, format: :json)
end
