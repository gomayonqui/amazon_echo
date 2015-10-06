class AmazonEcho::Response
  def initialize(response)
    @version              = response[:version]
    @session_attributes   = response[:session_attributes]
    @output_speech        = 'OK, done'
  end

  def say(output_speech=nil)
    @output_speech = output_speech if output_speech
    response
  end

  def version
    '1.0' || @version
  end

  def session_attributes
    {}  || @session_attributes
  end

  def response_hash
    { 'outputSpeech' => response_output_speech,
      'card' => response_card,
      'reprompt' => response_reprompt,
      'shouldEndSession' => response_end_session
    }
  end

  def response_output_speech
    { 'type' => 'PlainText', 'text' => @output_speech }
  end

  def response_card
    { 'type' => 'Simple', 'title' => 'Amazon Echo gem', 'content' => 'Response from amazon echo gem' }
  end

  def response_reprompt
    { 'outputSpeech' => { 'type' => 'PlainText', 'text' => 'Try again' }}
  end

  def response_end_session
    true
  end

  def response
    {
      'version' => version,
      'sessionAttributes' => session_attributes,
      'response' => response_hash,
    }
  end
end
