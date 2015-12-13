require 'spec_helper'

describe "ShortUrl" do

  let(:shorter) { Class.new { extend Tweefy::ShortUrl } }

  before do
    @id = "0X5AlhZuECn39CfLlSiQSZ"
  end

  it "short spotify url" do
    url = shorter.shorten(@id)
    expect(url[0..18]).to eq("http://tinyurl.com/")
  end

end