class AmazonEcho::Request
  def initialize(request={})
    @request  = request
  end

  def type
    @request["type"]
  end

  def intent
    @request["intent"]["name"]
  end

  def slot_value(slot_name)
    @request["intent"]['slots'][slot_name]['value'] rescue nil
  end
end
