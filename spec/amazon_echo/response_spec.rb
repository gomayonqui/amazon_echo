require 'spec_helper'

describe AmazonEcho::Response do
  it 'empty response' do
#    response = JSON.parse(File.read(File.dirname(__FILE__) + "/../fixtures/response.json"))
    expect(subject.response).to eq nil
  end
end
