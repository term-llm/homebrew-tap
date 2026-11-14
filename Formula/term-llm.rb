class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.106/term-llm_0.9.106_darwin_arm64.tar.gz"
      sha256 "c824edd47ca185730bde7f18ce74f4eebce55598c0b38fd298b5f0b6e1df215c"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.106/term-llm_0.9.106_darwin_amd64.tar.gz"
      sha256 "4880ca07199c4dbc4fe1fd7581a03a9deaf85c54cbad55a47f6bf5672868454e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.106/term-llm_0.9.106_linux_arm64.tar.gz"
      sha256 "788e9c83b90769dc1ee0942564c03fa8d1381a9dcc830ca5b1754982213943d0"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.106/term-llm_0.9.106_linux_amd64.tar.gz"
      sha256 "432872cca6d9f968301894fe6e85c9ee035573bf1ec097c4a25e65b5a6e85af9"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
