class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.130/term-llm_0.9.130_darwin_arm64.tar.gz"
      sha256 "a93cafdea1f99a7a32bd9e9f7450059ae79ba27bb24be101fc480654cb074945"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.130/term-llm_0.9.130_darwin_amd64.tar.gz"
      sha256 "2563e268f2db2249afe0e4cdec5d752ba404b17714a95b9be5d946b7d25f04a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.130/term-llm_0.9.130_linux_arm64.tar.gz"
      sha256 "36cf4554b1edc581cc0681ff9a7df4f736a803f7def5e582d67ffdf13d76fe17"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.130/term-llm_0.9.130_linux_amd64.tar.gz"
      sha256 "e0bc7afea26abca71bb541ae3bc31f5c0ae343c1beb2fb2fc55366d626145835"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
