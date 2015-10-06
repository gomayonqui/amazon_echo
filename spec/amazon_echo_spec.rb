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

  describe '.request' do
    it 'empty request' do
      expect(subject.request).to eq "Invalid request"
    end

    it 'launch request' do
      launch_request = JSON.parse(File.read(File.dirname(__FILE__) + "/fixtures/launch_request.json"))
      subject = AmazonEcho.new request: launch_request
      expect(subject.request).to be_a AmazonEcho::LaunchRequest
    end

    it 'session ended request' do
      session_ended_request = JSON.parse(File.read(File.dirname(__FILE__) + "/fixtures/session_ended_request.json"))
      subject = AmazonEcho.new request: session_ended_request
      expect(subject.request).to be_a AmazonEcho::SessionEndedRequest
    end

    it 'intent request' do
      intent_request = JSON.parse(File.read(File.dirname(__FILE__) + "/fixtures/intent_request.json"))
      subject = AmazonEcho.new request: intent_request
      expect(subject.request).to be_a AmazonEcho::IntentRequest
    end

    it 'invalid request' do
      subject = AmazonEcho.new request: {}
      expect(subject.request).to eq "Invalid request"
    end
  end
end
