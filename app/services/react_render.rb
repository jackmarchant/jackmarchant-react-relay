class ReactRender
  require 'uri'
  require 'net/http'

  def initialize(data)
    @uri = URI(ENV["REACT_RENDER_URI"])
    @data = data
  end

  def perform
    http = Net::HTTP.new(@uri.host, @uri.port)
    request = Net::HTTP::Post.new(@uri.path)
    request["Content-Type"] = 'application/json'
    request.body = @data.to_json
    http.request(request).body
  end
end