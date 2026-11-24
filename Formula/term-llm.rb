class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.125/term-llm_0.9.125_darwin_arm64.tar.gz"
      sha256 "0f0efcc1418bfcab5110ac8805c36936132b4fcf101c964ccd9455f0df0d8c31"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.125/term-llm_0.9.125_darwin_amd64.tar.gz"
      sha256 "9cd6b9c10ae2e49802a790489b22b32fdfd50d4acd28648a3fd8a7c754bc3168"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.125/term-llm_0.9.125_linux_arm64.tar.gz"
      sha256 "f3af8b93193415758c0d152a527bc106e756df332ba7a10a551e83ea390efcc8"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.125/term-llm_0.9.125_linux_amd64.tar.gz"
      sha256 "44a7bf06c3a41508a5fb19537b4c28afc2fcad8bf9a7d0db0c2978bc8f973084"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
