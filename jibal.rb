class Jibal < Formula
  desc "Jyväskylä ion beam analysis library (JIBAL)"
  homepage "https://github.com/JYU-IBA/jibal/"
  url "https://github.com/JYU-IBA/jibal/archive/v0.3.9.tar.gz"
  sha256 "c7a0364b255f15841c759bb141deb4cb5c11deb8b695054ad5326adbbac68e31"
  head "https://github.com/JYU-IBA/jibal.git"
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
      #include <stdio.h>
      int main() {
          jibal jibal;
          jibal.units = jibal_units_default();
          if(!jibal.units)
            return -1;
        return 0;
      }
    EOS
    system ENV.cc, "-I#{include}/jibal", "test.c", "-L#{lib}", "-ljibal", "-o", "test"
    system "./test"
  end
end
