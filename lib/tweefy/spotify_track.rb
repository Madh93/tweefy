require 'rspotify'
require "tweefy/short_url"

module Tweefy
  class SpotifyTrack

    include Tweefy::ShortUrl

    attr_accessor :track

    def initialize(id)
      @track = RSpotify::Track.find(id.strip)
    end

    def message
      "#NowPlaying \"#{@track.name}\" " \
      "by #{@track.artists.first.name} ♫ " \
      "#{shorten(@track.id)} "
    end

  end
end