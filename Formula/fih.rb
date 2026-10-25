class Fih < Formula
  desc "Sliding, tiling window manager for macOS"
  homepage "https://github.com/csjaugustus/fih"
  url "https://github.com/csjaugustus/fih/releases/download/v0.1.9/fih-0.1.9-macos-arm64.tar.gz"
  sha256 "5125516d7dceaa181a64a80433280bc66031d7bbd5299e10c473656d2328a776"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "fih"
  end

  def caveats
    <<~EOS
      Start fih now and at every login:
        fih install && fih start

      Allow fih under System Settings → Privacy & Security → Accessibility
      when asked. It needs this to move windows.

      After `brew upgrade fih`, run `fih restart`.
      To remove it: `fih uninstall`, then `brew uninstall fih`.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fih --version")
  end
end
