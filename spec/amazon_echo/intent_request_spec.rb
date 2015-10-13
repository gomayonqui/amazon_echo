require 'spec_helper'

describe AmazonEcho::IntentRequest do
  let(:intent_request)  { JSON.parse(File.read(File.dirname(__FILE__) + "/../fixtures/intent_request.json"))}
  let(:subject)         { AmazonEcho::IntentRequest.new(intent_request) }

  it 'empty response' do
    expect(subject.request).to eq intent_request
  end

  it '.type' do
    expect(subject.type).to eq 'IntentRequest'
  end

  it '.intent' do
    expect(subject.intent).to eq 'GetZodiacHoroscopeIntent'
  end

  it '.slot_value' do
    expect(subject.slot_value('ZodiacSign')).to eq 'virgo'
  end

  it 'slots' do
    expect(subject.slots).to eq ({"ZodiacSign"=>{"name"=>"ZodiacSign", "value"=>"virgo"}})
  end
end
