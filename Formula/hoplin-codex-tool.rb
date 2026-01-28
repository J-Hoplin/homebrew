class HoplinCodexTool < Formula
  desc "Hoplin's Terminal IDE with codex support"
  homepage "https://github.com/J-Hoplin/homebrew"
  version "0.2.3"
  license "MIT"

  url "https://raw.githubusercontent.com/J-Hoplin/homebrew/refs/heads/main/binary/hoplin-codex/hoplin-codex", using: :nounzip
  sha256 "8fd3d92410f912fc0639da511de75e61d8e0bd6383320958154cfa3e30ed30f9"

  def install
    bin.install "hoplin-codex"
  end

  test do
    output = shell_output("#{bin}/hoplin-codex --version")
    assert_match version.to_s, output
  end
end
