class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.111/term-llm_0.9.111_darwin_arm64.tar.gz"
      sha256 "fffb7df15f0163876d4eaa539607322c80c0f13a5deb53d5fa4fd66d96876a9c"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.111/term-llm_0.9.111_darwin_amd64.tar.gz"
      sha256 "79323e3f64b739bf5e52c38a336874946dd99dc3068bae34b3c494fc1581a92e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.111/term-llm_0.9.111_linux_arm64.tar.gz"
      sha256 "35fdae6f5beab94300e8c7d6ceb037dbf87ba94d5a9c00e813605426304b9d1a"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.111/term-llm_0.9.111_linux_amd64.tar.gz"
      sha256 "cc0e4def29ec051451579a89c919c5062c7957c79e33eedd077f2b00ffac6442"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
