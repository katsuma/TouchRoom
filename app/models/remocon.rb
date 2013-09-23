class Remocon
  BASE_URL = 'http://192.168.0.6:9292/'

  def send_to_server(value)
    BW::HTTP.get("#{BASE_URL}/#{value}") do |response|
      p response.body.to_str
    end
  end
end
