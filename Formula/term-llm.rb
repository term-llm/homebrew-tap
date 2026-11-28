class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.128/term-llm_0.9.128_darwin_arm64.tar.gz"
      sha256 "2db4c53eef086a30d0ea47404a82f5a6c73d75d4262a2e178fdc4d488ea8893f"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.128/term-llm_0.9.128_darwin_amd64.tar.gz"
      sha256 "111d9bf9c0e1b4e13703fb3de7a2dc5432174b9c6e688768045109cdad7d162b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.128/term-llm_0.9.128_linux_arm64.tar.gz"
      sha256 "a2c1db1eabadc950208a5eb46caa0cd003af7c5ee089060fe7e5ae267b9c864c"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.128/term-llm_0.9.128_linux_amd64.tar.gz"
      sha256 "c9165a7d61189b2714540660b688a5be87b3198875f1dc16ff14284d258aa225"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
