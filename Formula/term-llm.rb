class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.115/term-llm_0.9.115_darwin_arm64.tar.gz"
      sha256 "bd00337e640e0ec608b1cdef4c97a84bf21b8c018bdb75063e7a2581dbc7418c"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.115/term-llm_0.9.115_darwin_amd64.tar.gz"
      sha256 "5f9f9031829a3262a93428aecb2537506bfb9e3df52ce7fae0a2be41515c0782"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.115/term-llm_0.9.115_linux_arm64.tar.gz"
      sha256 "43696111efcd4d11b5b9c8e4df721205f23b0dacd3eff2411073d06249dd338a"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.115/term-llm_0.9.115_linux_amd64.tar.gz"
      sha256 "7965e6c545d305b9f92b30f53744ffc2e75372f77f7821d1abe72b720a76a719"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
