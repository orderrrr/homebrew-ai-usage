class AiUsage < Formula
  desc "Tree-grouped usage report for opencode + Claude Code sessions"
  homepage "https://git.sr.ht/~orderrrr/ai-usage"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/orderrrr/homebrew-ai-usage/releases/download/v0.12.0/" \
          "ai-usage-v0.12.0-darwin-arm64.tar.gz"
      sha256 "55c0006a8cfe51cd5f5e87f756a91d472bb2deb780463ece10300dd1dad8972e"
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
