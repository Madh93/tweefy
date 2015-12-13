require 'rspotify'

module Tweefy
  class SpotifyTrack

    attr_accessor :track

    def initialize(id)
      @track = RSpotify::Track.find(id.strip)
    end

    def message
      "#NowPlaying \"#{@track.name}\" by #{@track.artists.first.name} ♫"
    end

  end
end