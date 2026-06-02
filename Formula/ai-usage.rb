class AiUsage < Formula
  desc "Tree-grouped usage report for opencode + Claude Code sessions"
  homepage "https://git.sr.ht/~orderrrr/ai-usage"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/orderrrr/homebrew-ai-usage/releases/download/v0.5.0/ai-usage-v0.5.0-darwin-arm64.tar.gz"
      sha256 "8c6e3d9c8d6f2cc86b043bef84a55357c89dece6b97d66232c4674e56a81c782"
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
