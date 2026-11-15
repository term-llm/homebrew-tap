class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.108/term-llm_0.9.108_darwin_arm64.tar.gz"
      sha256 "635117380d7a1cfd3ec465e89a74bc0829adbfa3e6d15e6c0f83663545d8e2c1"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.108/term-llm_0.9.108_darwin_amd64.tar.gz"
      sha256 "7d1cfe76e19b296754a3c60679499b7fcb49ce41c7d0ec6d8461f00b5136fd31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.108/term-llm_0.9.108_linux_arm64.tar.gz"
      sha256 "69e0668b515d03b63ba407c50a246719c3f006df3d967d6db04822e4c0013110"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.108/term-llm_0.9.108_linux_amd64.tar.gz"
      sha256 "0af0549df20c4f8c3540ae3402a4dc3abbb05bee1faf98caf166daf50e76033f"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
