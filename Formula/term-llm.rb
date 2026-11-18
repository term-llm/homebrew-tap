class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.110/term-llm_0.9.110_darwin_arm64.tar.gz"
      sha256 "b9c441c0d375a863460d72b7ee027f525a4183931f9132aacf8df898531bdf4b"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.110/term-llm_0.9.110_darwin_amd64.tar.gz"
      sha256 "537871871bedf2450b426a5af4915f9072d3bdff71dba625bd66f86ec174de5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.110/term-llm_0.9.110_linux_arm64.tar.gz"
      sha256 "3fd04e85970217abba6b57ecf559cf75ef19484fecb182dff36d8826091bf472"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.110/term-llm_0.9.110_linux_amd64.tar.gz"
      sha256 "d12564ed4f672c87694d2a45ba31a6328d70da2bb32f1cc2098def4feec50cbb"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
