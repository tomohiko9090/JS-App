json.extract! card, :id, :name, :address, :birthday, :created_at, :updated_at
json.url card_url(card, format: :json)
