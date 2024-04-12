class JabsCli < Formula
  desc "Jaakko's Backscattering Simulator (JaBS) command-line version"
  homepage "https://github.com/JYU-IBA/jabs/"
  url "https://github.com/JYU-IBA/jabs/archive/refs/tags/v0.7.3.tar.gz"
  sha256 "d209f513fe01218e0bc65079d0f79e04f873aa5536d1cf94232cc788d40e0ee3"
  head "https://github.com/JYU-IBA/jabs.git", branch: "main"
  depends_on "cmake" => :build
  depends_on "gsl"
  depends_on "jibal"
  depends_on "libxml2"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
