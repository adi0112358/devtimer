class Devtimer < Formula
 desc "Simple dev timer for productivity"
 homepage "https://github.com/adi0112358/devtimer"
 url "https://github.com/adi0112358/devtimer/archive/refs/tags/v1.0.0.tar.gz"
 sha256 "da263394b0148ab61062f7e9ee549a126e3bb7e1d2ff560c70be03a3ad92f2f5"
 license "MIT"
 
  def install
    system "g++",  "-Wall",  "-o",  "devtimer.out",  "devtimer.cpp"
    bin.install "devtimer.out"
end
end
