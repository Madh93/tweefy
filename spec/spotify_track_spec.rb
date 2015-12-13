require 'spec_helper'

describe Tweefy::SpotifyTrack do

  before do
    @id = "0X5AlhZuECn39CfLlSiQSZ"
    @track = Tweefy::SpotifyTrack.new(@id)
  end

  describe "track information" do
    it "get name" do
      expect(@track.track.name).to eq("What A Wonderful World")
    end

    it "get uri" do
      expect(@track.track.uri).to eq("spotify:track:#{@id}")
    end
  end

  describe "tweet message" do
    it "message to publish on twitter" do
      short_message = @track.message.split("♫").first
      expect(short_message).to eq("#NowPlaying \"What A Wonderful World\" " \
                                  "by Louis Armstrong ")
    end
  end

end