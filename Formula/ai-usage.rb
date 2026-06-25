class AiUsage < Formula
  desc "Tree-grouped usage report for opencode + Claude Code sessions"
  homepage "https://git.sr.ht/~orderrrr/ai-usage"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/orderrrr/homebrew-ai-usage/releases/download/v0.10.1/ai-usage-v0.10.1-darwin-arm64.tar.gz"
      sha256 "55aa4f663e3a39b48acc88728e0385cc9059e8fd73ec4b8c39ff97500411c13f"
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
