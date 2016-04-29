json.array!(@biodata) do |biodatum|
  json.extract! biodatum, :id, :nama, :ttl, :alamat
  json.url biodatum_url(biodatum, format: :json)
end
