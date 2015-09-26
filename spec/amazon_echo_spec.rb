require 'spec_helper'

describe AmazonEcho do
  it 'has a version number' do
    expect(AmazonEcho::VERSION).not_to be nil
  end

  it '.say' do
    response = JSON.parse(File.read(File.dirname(__FILE__) + "/fixtures/response.json"))
    response["response"]["outputSpeech"]["text"] = "You know nothing"
    expect(subject.say("You know nothing")).to eq response
  end
end
