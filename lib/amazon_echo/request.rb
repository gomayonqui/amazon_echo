class AmazonEcho::Request
  def initialize(request)
    @original_request = request
    @version          = request["version"]
    @session          = request["session"]
    @request          = request["request"]
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

  def request
    @original_request
  end

end
