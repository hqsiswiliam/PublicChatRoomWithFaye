json.array!(@public_messages) do |public_message|
  json.extract! public_message, :email, :public_message
  json.url public_message_url(public_message, format: :json)
end
