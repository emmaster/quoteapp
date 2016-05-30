json.array!(@myquotes) do |myquote|
  json.extract! myquote, :id
  json.url myquote_url(myquote, format: :json)
end
