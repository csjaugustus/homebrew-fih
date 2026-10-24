class Fih < Formula
  desc "Sliding, tiling window manager for macOS"
  homepage "https://github.com/csjaugustus/fih"
  url "https://github.com/csjaugustus/fih/releases/download/v0.0.0/fih-0.0.0-macos-arm64.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
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
