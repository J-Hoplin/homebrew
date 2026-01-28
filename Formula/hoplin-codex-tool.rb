class HoplinCodexTool < Formula
  desc "Hoplin's Terminal IDE with codex support"
  homepage "https://github.com/J-Hoplin/homebrew"
  version "0.2.2"
  license "MIT"

  url "https://raw.githubusercontent.com/J-Hoplin/homebrew/refs/heads/main/binary/hoplin-codex/hoplin-codex", using: :nounzip
  sha256 "bc79d8a27a35d7987ff44e238756354a6ba3086207a3463eaf837250c57593d5"

  def install
    bin.install "hoplin-codex"
  end

  test do
    output = shell_output("#{bin}/hoplin-codex --version")
    assert_match version.to_s, output
  end
end
