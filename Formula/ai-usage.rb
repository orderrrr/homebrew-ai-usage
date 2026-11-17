class AiUsage < Formula
  desc "Tree-grouped usage report for opencode + Claude Code sessions"
  homepage "https://git.sr.ht/~orderrrr/ai-usage"
  version "0.17.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/orderrrr/homebrew-ai-usage/releases/download/v0.17.3/" \
          "ai-usage-v0.17.3-darwin-arm64.tar.gz"
      sha256 "6957ffbfcd2ccc4b84bad773ebc9bce6a6c7d16c21e17018574d015d58e114d2"
    end
  end

  def install
    bin.install "ai-usage"
    fish_completion.install "completions/ai-usage.fish"
    zsh_completion.install "completions/_ai-usage"
  end

  test do
    assert_match "Usage: ai-usage", shell_output("#{bin}/ai-usage --help")
  end
end
