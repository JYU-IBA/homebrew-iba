class Jibal < Formula
  desc "Jyväskylä ion beam analysis library (JIBAL)"
  homepage "http://users.jyu.fi/~jaakjuli/jibal/"
  url "https://github.com/JYU-IBA/jibal/archive/v0.2.6.tar.gz"
  sha256 "c945c6f9ecf61bc2c69bd38d006bcc90be3aa72ddb98e82ec91eebc4280ed489"
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
