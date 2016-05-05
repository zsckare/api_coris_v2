json.array!(@workshops) do |workshop|
  json.extract! workshop, :id, :folio
  json.url workshop_url(workshop, format: :json)
end
