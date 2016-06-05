require 'spec_helper'

describe Phearb::Configuration do
  before(:context) do
    @host = 'dummy_host'
    @port = 1000

    Phearb.configure do |config|
      config.host = @host
      config.port = @port
    end
  end

  it 'sets host' do
    expect(Phearb.configuration.host).to eq(@host)
  end

  it 'sets port' do
    expect(Phearb.configuration.port).to eq(@port)
  end
end
