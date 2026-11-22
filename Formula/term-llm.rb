class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.119/term-llm_0.9.119_darwin_arm64.tar.gz"
      sha256 "0055c940aa9e8ea3261c2d8ada8186525ffda50e3aba6d6fc0d8fe93b81d2058"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.119/term-llm_0.9.119_darwin_amd64.tar.gz"
      sha256 "8d7d14daf23fd771dcce7246fd9c2c7cb9d81462e92ed8484babae57bed20dba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.119/term-llm_0.9.119_linux_arm64.tar.gz"
      sha256 "886d3ee3b6880c30b01a71c4693f94be660e900e5b0c092b00f8049e0cf33481"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.119/term-llm_0.9.119_linux_amd64.tar.gz"
      sha256 "f5c29174c13b7fbf40454b7162d0e4bbad8c3de735a7ef3882a2d286cb22a1a6"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
