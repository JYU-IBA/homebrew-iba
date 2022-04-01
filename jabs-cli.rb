class JabsCli < Formula
  desc "Jaakko's Backscattering Simulator (JaBS) command line version"
  homepage "https://github.com/JYU-IBA/jabs/"
  url "https://github.com/JYU-IBA/jabs/archive/v0.6.0.tar.gz"
  sha256 "a563530ddba1c4c7c4928a9ea1cc8631f141eb37dedbdd83701de7955e2be4cd"
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
