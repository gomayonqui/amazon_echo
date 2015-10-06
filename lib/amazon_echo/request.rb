class AmazonEcho::Request
  def initialize(request)
    @request  = request
  end

  def type
    @request["type"]
  end

  def timestamp
    @request["timestamp"]
  end

  def request_id
    @request["requestId"]
  end

end
