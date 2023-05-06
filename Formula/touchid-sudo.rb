class TouchidSudo < Formula
    desc "Enable TouchID authentication for sudo on macOS"
    homepage "https://github.com/Cerebrovinny/homebrew-touchid-sudo"
    url "https://github.com/Cerebrovinny/homebrew-touchid-sudo/archive/refs/tags/v1.0.1.tar.gz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    license "MIT"
  
    def install
      bin.install "enable_touchid_sudo.sh"
    end
  
    def caveats
      <<~EOS
        This script must be run as root. To enable TouchID for sudo, run:
          sudo #{opt_bin}/enable_touchid_sudo.sh
      EOS
    end
  end