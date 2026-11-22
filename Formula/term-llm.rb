class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.120/term-llm_0.9.120_darwin_arm64.tar.gz"
      sha256 "efa3fc34e3946c2d983028331a920e553fd20aabe31bf5e29ef5aa997f27256c"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.120/term-llm_0.9.120_darwin_amd64.tar.gz"
      sha256 "77bf44921ec804bf3717462c1a456ea73a69d34eb388df3623f8ef9d75a9bd0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.120/term-llm_0.9.120_linux_arm64.tar.gz"
      sha256 "4434c72d3a7d108add75670677b5fa67de277eab96a363064abb0c1b7a08a023"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.120/term-llm_0.9.120_linux_amd64.tar.gz"
      sha256 "8abdc7c42c68c7e603eba1ab49df35099172a69d7adde20e9261defed2c67406"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
