class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.124/term-llm_0.9.124_darwin_arm64.tar.gz"
      sha256 "e39706abef0a30358124f1fa6a67d337c09dc935d437a6eae45b9e3c48cb930d"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.124/term-llm_0.9.124_darwin_amd64.tar.gz"
      sha256 "08c213728faa0db3e1647a89c20df457a09b10399f352c76181ec07809f6e0ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.124/term-llm_0.9.124_linux_arm64.tar.gz"
      sha256 "0ef4613ae81b21f1beee66aa2e6d9f1a8e304f8a135539a0f2b3c870da78986c"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.124/term-llm_0.9.124_linux_amd64.tar.gz"
      sha256 "cb560b469db7e511811bf20723e6d879b48813ecce01ef8e1ba4987546593ea1"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
