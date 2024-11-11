class JabsCli < Formula
  desc "Jaakko's Backscattering Simulator (JaBS) command-line version"
  homepage "https://github.com/JYU-IBA/jabs/"
  url "https://github.com/JYU-IBA/jabs/archive/refs/tags/v0.7.5.tar.gz"
  sha256 "d04a3a4398491763cf9060d044bb42f1e46d57742ba987770575c98538f1e7c7"
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
