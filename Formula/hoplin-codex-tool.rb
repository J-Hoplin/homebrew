class HoplinCodexTool < Formula
  desc "Hoplin's Terminal IDE with codex support"
  homepage "https://github.com/J-Hoplin/homebrew"
  version "0.2.4"
  license "MIT"

  url "https://raw.githubusercontent.com/J-Hoplin/homebrew/refs/heads/main/binary/hoplin-codex/hoplin-codex", using: :nounzip
  sha256 "2ce61a6397fb4071d5c72fb2ef73a2fa3418920b178233a7eb1fafe4d3afef03"

  def install
    bin.install "hoplin-codex"
  end

  test do
    output = shell_output("#{bin}/hoplin-codex --version")
    assert_match version.to_s, output
  end
end
