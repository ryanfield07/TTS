json.array!(@beers) do |beer|
  json.extract! beer, :id, :brewery, :name, :rating, :date, :comments
  json.url beer_url(beer, format: :json)
end
