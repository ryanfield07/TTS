json.array!(@tests) do |test|
  json.extract! test, :id, :newname
  json.url test_url(test, format: :json)
end
