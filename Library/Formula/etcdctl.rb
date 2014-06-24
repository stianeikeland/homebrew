require 'formula'

class Etcdctl < Formula
  homepage 'https://github.com/coreos/etcdctl'
  url 'https://github.com/coreos/etcdctl/archive/v0.4.4.tar.gz'
  sha1 '44c88abdd40ff53fd8bb64f41936806b854936fe'
  head 'https://github.com/coreos/etcdctl.git'

  bottle do
    sha1 "75f0759aaa2530515292ee085b2842c7720f4b60" => :mavericks
    sha1 "adc8d9fe819aa37986ea31e1e242bea4f042b43b" => :mountain_lion
    sha1 "b59391519465ca5f28804dbd66492180d2f4dea8" => :lion
  end

  depends_on 'go' => :build

  def install
    ENV['GOPATH'] = buildpath
    system "./build"
    bin.install 'bin/etcdctl'
  end
end
