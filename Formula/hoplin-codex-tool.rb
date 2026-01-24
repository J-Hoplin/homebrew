class HoplinCodexTool < Formula
  desc "Hoplin's Terminal IDE with codex support"
  homepage "https://github.com/J-Hoplin/homebrew"
  version "0.0.1"
  license "MIT"

  url "https://raw.githubusercontent.com/J-Hoplin/homebrew/refs/heads/main/binary/hoplin-codex/hoplin-codex", using: :nounzip
  sha256 "4ff76b573906b555499f5c0d0b04dfd267d303fe91546358803bace13db0c8f1"

  def install
    bin.install "hoplin-codex"
  end

  test do
    output = shell_output("#{bin}/hoplin-codex --version")
    assert_match version.to_s, output
  end
end
