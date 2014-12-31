json.array!(@resources) do |resource|
  json.extract! resource, :id, :url, :summary
  json.url resource_url(resource, format: :json)
end
