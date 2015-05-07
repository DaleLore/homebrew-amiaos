require 'formula'

class Vrecord < Formula
  homepage 'https://github.com/amiaopensource/vrecord'
  url "https://github.com/amiaopensource/vrecord/archive/v0.7.zip"
  sha256 "bdae8dd7c6dd129543b28d998b4b1692711feb743440d78d2d0284d33cabd768"
  head 'https://github.com/amiaopensource/vrecord.git'

  depends_on 'amiaopensource/amiaos/bmdtools'
  depends_on "xmlstarlet" => :recommended
  depends_on "sdl"
  depends_on "ffmpeg" => [ 'with-ffplay', 'with-openjpeg', 'with-libass', 'with-freetype', 'with-faac' ]

  def install
     bin.install 'vrecord'
     bin.install 'vstop'
     bin.install 'shotcutsaveas'
  end
end
