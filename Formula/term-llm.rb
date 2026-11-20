class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.114/term-llm_0.9.114_darwin_arm64.tar.gz"
      sha256 "374ad431ccc11365adc32e0f4c2ae136901cc7be66abee708abb030e18d35a80"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.114/term-llm_0.9.114_darwin_amd64.tar.gz"
      sha256 "14ae7495ea2f10f161df1fa489dbdb68a3c2f729148a8ace8877e7496ecf2067"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.114/term-llm_0.9.114_linux_arm64.tar.gz"
      sha256 "3114e682e65053540369a82e16ba790948aa60216a9008a6338645124fd4480a"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.114/term-llm_0.9.114_linux_amd64.tar.gz"
      sha256 "13fef7c6fde8bb9f65024f16a08e61fb895c169ea79a2537c53c37d2479494d6"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
