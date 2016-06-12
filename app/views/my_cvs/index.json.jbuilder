json.array!(@my_cvs) do |my_cv|
  json.extract! my_cv, :id
  json.url my_cv_url(my_cv, format: :json)
end
