class AmazonEcho::IntentRequest < AmazonEcho::Request

  def intent
    @request["intent"]["name"]
  end

  def slot_value(slot_name)
    @request["intent"]['slots'][slot_name]['value'] rescue nil
  end

  def slots
    @request["intent"]['slots']
  end
end
