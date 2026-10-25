class Fih < Formula
  desc "Sliding, tiling window manager for macOS"
  homepage "https://github.com/csjaugustus/fih"
  url "https://github.com/csjaugustus/fih/releases/download/v0.1.10/fih-0.1.10-macos-arm64.tar.gz"
  sha256 "d73860bd929d2c39c4dd1fd74020c0c9af0fe4f6ed115351e8159d87687ffcbb"
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
