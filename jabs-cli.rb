class JabsCli < Formula
  desc "Jaakko's Backscattering Simulator (JaBS) command-line version"
  homepage "https://github.com/JYU-IBA/jabs/"
  url "https://github.com/JYU-IBA/jabs/archive/v0.6.5.tar.gz"
  sha256 "64f8ecef3d1775cc5574119523f95618c6fc6ca5e4d029571626a148435e0f8c"
  head "https://github.com/JYU-IBA/jabs.git", branch: "main"
  depends_on "cmake" => :build
  depends_on "gsl"
  depends_on "jibal"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
