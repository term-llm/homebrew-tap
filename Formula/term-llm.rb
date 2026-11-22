class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.118/term-llm_0.9.118_darwin_arm64.tar.gz"
      sha256 "89b15653849e9c30112d2b1a5ad50f33f366c9d0937e803f8d1fdcb1495838b2"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.118/term-llm_0.9.118_darwin_amd64.tar.gz"
      sha256 "a145b8b2289025383d6e5e45603dfbfc5a1f83dfb994d2c70b21f709e7b4fe48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.118/term-llm_0.9.118_linux_arm64.tar.gz"
      sha256 "25589b3b7dd3644c6d10b9eb4517ab3bd3ec6d7ed74e367be7fed2144490ab5f"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.118/term-llm_0.9.118_linux_amd64.tar.gz"
      sha256 "6301aabfd0f927873a4a9f11b05c5807c8baac2fa4b12c99081c36550813d076"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
