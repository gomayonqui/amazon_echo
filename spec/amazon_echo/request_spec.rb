require 'spec_helper'

describe AmazonEcho::Request do
  it '.response' do
    response = JSON.parse(File.read(File.dirname(__FILE__) + "/../fixtures/response.json"))
    expect(subject.response).to eq response
  end
end
