class Jibal < Formula
  desc "Jyväskylä ion beam analysis library (JIBAL)"
  homepage "http://users.jyu.fi/~jaakjuli/jibal/"
  url "https://github.com/JYU-IBA/jibal/archive/v0.2.3.tar.gz"
  sha256 "60c2e6e574e79cbe7138b6d21c8d125797d8d3470618cdc9f3078316a6ca6f59"
  depends_on "cmake" => :build
  depends_on "gsl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test jibal`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
