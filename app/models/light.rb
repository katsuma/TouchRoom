class Light < Remocon
  def send_signal(type)
    send_to_server("/light/#{type}")
  end
end
