class JabsCli < Formula
  desc "Jaakko's Backscattering Simulator (JaBS) command-line version"
  homepage "https://github.com/JYU-IBA/jabs/"
  url "https://github.com/JYU-IBA/jabs/archive/v0.6.3.tar.gz"
  sha256 "f1ab0fa3571fe792d6fab0b71fc62789e00ae27c06eee7ff3507c3fc0a00fa19"
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
