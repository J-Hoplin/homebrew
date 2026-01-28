class HoplinCodexTool < Formula
  desc "Hoplin's Terminal IDE with codex support"
  homepage "https://github.com/J-Hoplin/homebrew"
  version "0.2.0"
  license "MIT"

  url "https://raw.githubusercontent.com/J-Hoplin/homebrew/refs/heads/main/binary/hoplin-codex/hoplin-codex", using: :nounzip
  sha256 "41386e0d9163a40591f4e1b8510128f996d61bee91ddf9aaa02b0328d4bd5254"

  def install
    bin.install "hoplin-codex"
  end

  test do
    output = shell_output("#{bin}/hoplin-codex --version")
    assert_match version.to_s, output
  end
end
