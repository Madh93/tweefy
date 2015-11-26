require 'spec_helper'

describe Tweefy::Settings do

  before do
    @settings = Tweefy::Settings.new do |s|
      s.consumer_key = "CK"
      s.consumer_secret = "CS"
      s.access_token = "AT"
      s.access_token_secret = "AS"
    end
  end

  it "get consumer key" do
    expect(@settings.consumer_key).to eq("CK")
  end

end