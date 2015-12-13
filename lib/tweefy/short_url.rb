require 'shorturl'

module Tweefy
  module ShortUrl

    def shorten(id)
      ShortURL.shorten("https://play.spotify.com/track/" + id, :tinyurl)
    end
  end
end