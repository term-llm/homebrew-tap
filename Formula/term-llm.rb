class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.117/term-llm_0.9.117_darwin_arm64.tar.gz"
      sha256 "3826b7ea4b209824df335a6b1cee0760a28521e93009325a9b021f7c525e2bdc"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.117/term-llm_0.9.117_darwin_amd64.tar.gz"
      sha256 "2cfdc88edddf6976420b3b0eff92334fa01df8681a33bcfb893ec30882ee0c03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.117/term-llm_0.9.117_linux_arm64.tar.gz"
      sha256 "4632ecdff0b27f4f0e089c97bf790fafb587f734367502c0ebcf5a44a3bcc949"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.117/term-llm_0.9.117_linux_amd64.tar.gz"
      sha256 "867708a85420789b726f55a43da9515aada86d8d034a9d58e4471c0b2545080c"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
