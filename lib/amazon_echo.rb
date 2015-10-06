require 'amazon_echo/version'
require 'amazon_echo/response'
require 'amazon_echo/request'
require 'amazon_echo/intent_request'
require 'amazon_echo/launch_request'
require 'amazon_echo/session_ended_request'

class AmazonEcho
  attr_reader :request, :response

  def initialize(request: nil, response: {})
    @request  = build_request(request)
    @response = Response.new(response)
  end

  def say(output_speech)
    response.say(output_speech)
  end

  def build_request(request)
    if request && request["request"]
      case request["request"].fetch("type")
      when "LaunchRequest"
        AmazonEcho::LaunchRequest
      when "IntentRequest"
        AmazonEcho::IntentRequest
      when "SessionEndedRequest"
        AmazonEcho::SessionEndedRequest
      end.new(request)
    else
      "Invalid request"
    end
  end
end
