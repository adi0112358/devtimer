class devtimer < Formula
 desc "Simple dev timer for productivity"
 homepage "https://github.com/adi0112358/devtimer"
 url "https://github.com/adi0112358/devtimer/archive/refs/tags/v1.0.0.tar.gz"
 sha256 "REPLACE_ME_WITH_REAL_SHA256"
 license "MIT"
 
  def install
    system "g++",  "-Wall",  "-o",  "devtimer.out",  "devtimer.cpp"
    bin.install "devtimer.out"
end
end
