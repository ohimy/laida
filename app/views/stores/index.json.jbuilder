json.array!(@stores) do |store|
  json.extract! store, :id, :name, :logo, :star, :state, :remarks, :amounts_to_send, :time_to_send, :shop_hours, :license
  json.url store_url(store, format: :json)
end
