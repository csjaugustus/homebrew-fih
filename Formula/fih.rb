class Fih < Formula
  desc "Sliding, tiling window manager for macOS"
  homepage "https://github.com/csjaugustus/fih"
  url "https://github.com/csjaugustus/fih/releases/download/v0.1.11/fih-0.1.11-macos-arm64.tar.gz"
  sha256 "08dd30eb41394d93c292138797c8d4313e067b0a6367f4159a1d64292a00312e"
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
