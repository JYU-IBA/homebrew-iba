class JabsCli < Formula
  desc "Jaakko's Backscattering Simulator (JaBS) command-line version"
  homepage "https://github.com/JYU-IBA/jabs/"
  url "https://github.com/JYU-IBA/jabs/archive/refs/tags/v0.7.6.tar.gz"
  sha256 "6e35d6a893b147a1ba2a1901c00d4f03064827b60c95afe83a500c9d2d95b4d3"
  head "https://github.com/JYU-IBA/jabs.git", branch: "main"
  depends_on "cmake" => :build
  depends_on "gsl"
  depends_on "jibal"
  depends_on "libomp" => :recommended
  depends_on "readline" => :recommended
  uses_from_macos "libxml2"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
