json.array!(@marlbles) do |marlble|
  json.extract! marlble, :id, :name, :color, :person_id
  json.url marlble_url(marlble, format: :json)
end
