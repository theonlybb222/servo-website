json.array!(@slides) do |slide|
  json.extract! slide, :section_id, :title, :content, :image
  json.url slide_url(slide, format: :json)
end
