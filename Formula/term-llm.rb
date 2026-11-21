class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.116/term-llm_0.9.116_darwin_arm64.tar.gz"
      sha256 "3ee6849728a7d9585fd2ad89bb7d32e7d344edb22ff5a3377595bc72de909439"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.116/term-llm_0.9.116_darwin_amd64.tar.gz"
      sha256 "8bfe404345e1fb1e805e275da23f68d7fb018e274258ab4b47afebbac1d7f61d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.116/term-llm_0.9.116_linux_arm64.tar.gz"
      sha256 "fa6820e1834c2a9e40bca9ad5437e51706f9891590bedb2711ebd3de2828ce28"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.116/term-llm_0.9.116_linux_amd64.tar.gz"
      sha256 "908647820c92d321bab8977b8bcbf3857199e18ec509c6f4ee8d297075b52c94"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
