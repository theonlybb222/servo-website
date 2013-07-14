json.array!(@sections) do |section|
  json.extract! section, :name
  json.url admin_section_url(section, format: :json)
end
