class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.107/term-llm_0.9.107_darwin_arm64.tar.gz"
      sha256 "ed8bedc84da2a007b468e15fc83593ce6149abc211d84c6295b68a17d9ef4706"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.107/term-llm_0.9.107_darwin_amd64.tar.gz"
      sha256 "37a566383ff33fab39a80d70a6439cd488b97251b2544d6358e8691a4fc02715"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.107/term-llm_0.9.107_linux_arm64.tar.gz"
      sha256 "daaf7fcacd92c5d623d6fe0161e803ea387174b072fec4d4a2428b536752ba3f"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.107/term-llm_0.9.107_linux_amd64.tar.gz"
      sha256 "f4ecdbc7fcaaeddd52176b4d24acb6474f654af5a7b6060464819bc5bec48ef5"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
