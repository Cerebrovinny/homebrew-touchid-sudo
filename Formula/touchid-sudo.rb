class TouchidSudo < Formula
    desc "Enable TouchID authentication for sudo on macOS"
    homepage "https://github.com/Cerebrovinny/homebrew-touchid-sudo"
    url "https://github.com/Cerebrovinny/homebrew-touchid-sudo/archive/refs/tags/v1.0.0.tar.gz"
    sha256 "ebd5bdccb8465f37f143115ea953e8a79b6b5aae38648edc9dfe4391bfaabca6"
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