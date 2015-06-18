json.array!(@table_data) do |table_datum|
  json.extract! table_datum, :id, :name
  json.url table_datum_url(table_datum, format: :json)
end
