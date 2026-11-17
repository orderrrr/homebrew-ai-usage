class AiUsage < Formula
  desc "Tree-grouped usage report for opencode + Claude Code sessions"
  homepage "https://git.sr.ht/~orderrrr/ai-usage"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/orderrrr/homebrew-ai-usage/releases/download/v0.17.1/" \
          "ai-usage-v0.17.1-darwin-arm64.tar.gz"
      sha256 "c2995b089a10fc8edb70dbdd6f80559d6a9d7ed400bc7857a9f16451dd0ecb76"
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
