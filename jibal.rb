class Jibal < Formula
  desc "Jyväskylä ion beam analysis library (JIBAL)"
  homepage "https://github.com/JYU-IBA/jibal/"
  url "https://github.com/JYU-IBA/jibal/archive/v0.3.0.tar.gz"
  sha256 "ac572ddd7254abfa6a5916c9052a8a9e9e8bbafab2e031f21a6d239355f42bf0"
  depends_on "cmake" => :build
  depends_on "gsl"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
  test do
  (testpath/"test.c").write <<~EOS
#include <jibal.h>
#include <jibal_defaults.h>
#include <stdio.h>
int main() {
    jibal jibal;
    jibal.units = jibal_units_default();
    if(!jibal.units)
        return -1;
    fprintf(stderr, "JIBAL version %s, library version %s\n", JIBAL_VERSION, jibal_version());
    return 0;
}
EOS
  system ENV.cc,"-I#{include}/jibal", "test.c", "-L#{lib}", "-ljibal", "-o", "test"
  system "./test"
  end
end
