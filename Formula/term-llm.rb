class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.122/term-llm_0.9.122_darwin_arm64.tar.gz"
      sha256 "be84e55dfd10f9f2235d12fa5cefd919dce842ec57211dc66d40379f69424c62"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.122/term-llm_0.9.122_darwin_amd64.tar.gz"
      sha256 "e24348f528c3a52ca0e17e4d311c5a99eecd10ed16e6e4dc0bdd04fe91e59d52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.122/term-llm_0.9.122_linux_arm64.tar.gz"
      sha256 "ad20f681291454cbe23fb664d2d645255a1f844aac6407aa741e7653c5497d68"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.122/term-llm_0.9.122_linux_amd64.tar.gz"
      sha256 "01258e7461c6eeb08ce97be611f7abbb19dd10f3e76dce7439ba5728bb52dab0"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
