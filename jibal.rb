class Jibal < Formula
  desc "Jyväskylä ion beam analysis library (JIBAL)"
  homepage "https://github.com/JYU-IBA/jibal/"
  url "https://github.com/JYU-IBA/jibal/archive/v0.3.7.tar.gz"
  sha256 "453b4c9ddb7010a4c0c870a4d9170b85a258d49efd820a4b25bfc69e3e86347b"
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
