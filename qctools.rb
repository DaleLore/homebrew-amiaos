class Qctools < Formula
  desc "Quality control archival video via libavfilter."
  homepage "https://bavc.org/preserve-media/preservation-tools"
  head "https://github.com/bavc/qctools.git"

  depends_on "pkg-config" => :build
  depends_on "amiaopensource/amiaos/qwt-qt5" => :build
  depends_on "qt5" => :build
  depends_on "decklinksdk" => :build
  depends_on "ffmpeg"

  def install
    cd "Project/Homebrew" do
      qmake = "#{Formula["qt5"].bin}/qmake"
      system qmake
      system "make"
    end
  end
end
