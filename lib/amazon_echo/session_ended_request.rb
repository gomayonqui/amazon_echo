class AmazonEcho::SessionEndedRequest < AmazonEcho::Request
  def reason
    @request["reason"]
  end
end
