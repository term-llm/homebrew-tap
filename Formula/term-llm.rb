class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.126/term-llm_0.9.126_darwin_arm64.tar.gz"
      sha256 "fb4385619726d1806385ada085ed1a782c2ae3446a473e1771996a02416964e6"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.126/term-llm_0.9.126_darwin_amd64.tar.gz"
      sha256 "efd338db038ca0b1c063a337a76e50a316db8200f8ca6cfe604a0ec756916d88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.126/term-llm_0.9.126_linux_arm64.tar.gz"
      sha256 "7ab1fc0a5bc19c45fa8931bc5010624dde71e19d27ef273a3fd2cbb4b850031e"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.126/term-llm_0.9.126_linux_amd64.tar.gz"
      sha256 "05d37929030eef0e00fb9b1a1f04f772d93ba4ff8bc670f875e0dda3d0155e37"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
