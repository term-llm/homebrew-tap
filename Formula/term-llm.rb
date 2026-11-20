class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.112/term-llm_0.9.112_darwin_arm64.tar.gz"
      sha256 "2b39cf2716f7bf88a968ebc818f896decb5a7e8e32c4281663a445d585f22e8d"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.112/term-llm_0.9.112_darwin_amd64.tar.gz"
      sha256 "4bdaee43a9ba278744b4f45fc899d5ea8044c8044ca851a44fbe49f676822169"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.112/term-llm_0.9.112_linux_arm64.tar.gz"
      sha256 "40a56e31244109e313dec70b08430924bfa183945c7eddd3cc63f563ff916689"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.112/term-llm_0.9.112_linux_amd64.tar.gz"
      sha256 "351dcdabd0b75e84773fdf27ec72390711498c2e3237d9e396cc13e89a3532db"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
