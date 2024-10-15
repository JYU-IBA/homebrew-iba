class JabsCli < Formula
  desc "Jaakko's Backscattering Simulator (JaBS) command-line version"
  homepage "https://github.com/JYU-IBA/jabs/"
  url "https://github.com/JYU-IBA/jabs/archive/refs/tags/v0.7.4.tar.gz"
  sha256 "9fc18557e9ce34ad183321a1006af7474a14d3e43d190f36a362645fa21b2d3e"
  head "https://github.com/JYU-IBA/jabs.git", branch: "main"
  depends_on "cmake" => :build
  depends_on "gsl"
  depends_on "jibal"
  depends_on "open-mpi" => :recommended
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
