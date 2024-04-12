class Jibal < Formula
  desc "Jyväskylä ion beam analysis library (JIBAL)"
  homepage "https://github.com/JYU-IBA/jibal/"
  url "https://github.com/JYU-IBA/jibal/archive/refs/tags/v0.3.12.tar.gz"
  sha256 "4215f5569b99829a3d6d0cba7b624defe77cc0a4981a21a06753622ac6ee5724"
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
