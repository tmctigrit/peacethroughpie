json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :serves, :ingredients, :directions, :imagefile
  json.url recipe_url(recipe, format: :json)
end
