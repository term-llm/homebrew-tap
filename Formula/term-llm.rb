class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.109/term-llm_0.9.109_darwin_arm64.tar.gz"
      sha256 "57506575fc8eb26bdbec07d330b757500c97dccffd8c80b501428e6281aa8541"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.109/term-llm_0.9.109_darwin_amd64.tar.gz"
      sha256 "da9be7daf009dc4144f81df98110e7d701d5c64efc97c8e6abd9ec57e4d4fe69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.109/term-llm_0.9.109_linux_arm64.tar.gz"
      sha256 "43b876de50434a077b16cc243b65dd4bef027c2bdd8f2e7dcdad42d8c47e1d8c"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.109/term-llm_0.9.109_linux_amd64.tar.gz"
      sha256 "cf453020834f2ef19692c6466c3c30b93ac28763f8d9b779f4108436c853547a"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
