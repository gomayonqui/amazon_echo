require 'amazon_echo/version'
require 'amazon_echo/response'
require 'amazon_echo/request'

class AmazonEcho
  attr_reader :request, :response

  def initialize(request={}, response={})
    @request  = Request.new(request)
    @response = Response.new(response)
  end

  def say(output_speech=nil)
    response.say(output_speech)
  end
end
