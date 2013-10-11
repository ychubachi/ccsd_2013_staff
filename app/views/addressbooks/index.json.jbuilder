json.array!(@addressbooks) do |addressbook|
  json.extract! addressbook, :zip, :address
  json.url addressbook_url(addressbook, format: :json)
end
