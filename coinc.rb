class Coinc < Formula
  desc "Coincidence seeker"
  homepage "http://users.jyu.fi/~jaakjuli/coinc/"
  url "https://github.com/JYU-IBA/coinc/archive/1.0.1.tar.gz"
  sha256 "9538de45a603f1ed6a924f461859dd06e2d6078dcf9ecdb19dceecf472d9c326"
  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test coinc`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
