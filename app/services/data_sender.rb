class DataSender
  def send(data)
    Net::HTTP.post(
      URI('http://localhost:4567/receive'),
      data.to_json,
      { 'Content-Type' => 'application/json' }
    )
  end
end
