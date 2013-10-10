require 'formula'

class GitCal < Formula
  homepage 'https://github.com/k4rthik/git-cal'
  url 'https://github.com/k4rthik/git-cal/archive/v0.9.tar.gz'
  sha1 'dd4027e367382a8593cab4212d2c7882a7b37680'

  def install
    system "perl", "Makefile.PL", "PREFIX=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "hash git-cal"
  end
end
