class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.123/term-llm_0.9.123_darwin_arm64.tar.gz"
      sha256 "c3816be52d68437747d219ee74d2560fa936b022d402cca825cb77f501208525"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.123/term-llm_0.9.123_darwin_amd64.tar.gz"
      sha256 "0159a121840cdfa9c50415508754acbed8665f1c75f00c74c96f52c6236db5c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.123/term-llm_0.9.123_linux_arm64.tar.gz"
      sha256 "c2429653f2d438acbbae7e7c47dbaeca049cb5f9d613849e28ca43b71c03b0f1"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.123/term-llm_0.9.123_linux_amd64.tar.gz"
      sha256 "6d793ca6a607b3d1e92c333c72ee25c56efcde4bc2025f925f81cfc888cfac7c"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
