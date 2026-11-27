class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.127/term-llm_0.9.127_darwin_arm64.tar.gz"
      sha256 "76c88b14067074d8ea852382b9f4f3961d52693e3de595a1285201f01292b6c2"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.127/term-llm_0.9.127_darwin_amd64.tar.gz"
      sha256 "eb9d4552b7127f07643444847cd53a74d0d45fb8eadd5a51a78b9d51a4ec0794"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.127/term-llm_0.9.127_linux_arm64.tar.gz"
      sha256 "e4ba1148deab7ad453c758ddfc35a40f027e0d7026fd2be3c6b4e07eac4b1ac0"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.127/term-llm_0.9.127_linux_amd64.tar.gz"
      sha256 "ca538f227781836de38a0f9e9e817609fd3f1cf03a4237eaa2ce624f2796527c"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
