require 'spec_helper'

describe Phearb::Agent do
  subject { described_class.new(@fetch_url) }

  context '#fetch' do
    before(:example) do
      @fetch_url = 'dummy_url'
      @server_url = "#{Phearb::Configuration::DEFAULT_HOST}:#{Phearb::Configuration::DEFAULT_PORT}"

      stub_request(:get, @server_url).
      with(query: { fetch_url: @fetch_url }).
      to_return(status: 200, body: { foo: :bar }.to_json)
    end

    it 'performs a get request' do
      expect(subject.fetch).to have_requested(:get, @server_url).
        with(query: { fetch_url: @fetch_url })
    end

    it 'returns an instance of Phearb::Response' do
      expect(subject.fetch).to be_an_instance_of Phearb::Response
    end
  end
end
