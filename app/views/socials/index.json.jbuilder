json.array!(@socials) do |social|
  json.extract! social, :id
  json.url social_url(social, format: :json)
end
