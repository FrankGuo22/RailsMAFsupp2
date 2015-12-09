json.array!(@orderdisplays) do |orderdisplay|
  json.extract! orderdisplay, :id
  json.url orderdisplay_url(orderdisplay, format: :json)
end
