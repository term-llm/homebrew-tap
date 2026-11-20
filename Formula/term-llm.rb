class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.113/term-llm_0.9.113_darwin_arm64.tar.gz"
      sha256 "45079461e5320bf8dea71e7eb67f67cf62e011ca61a79cd6ba3d05acbe0ebaf0"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.113/term-llm_0.9.113_darwin_amd64.tar.gz"
      sha256 "71f172f82306395fb60117aca3aa73e937e76cc3b6395cc899209af9906726ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.113/term-llm_0.9.113_linux_arm64.tar.gz"
      sha256 "9e8cfedc64005d113e9d7191f4bfe68635b074c265d690f7730911343e60380f"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.113/term-llm_0.9.113_linux_amd64.tar.gz"
      sha256 "a6e704dfb0df27c7da3aa77ae624ffd3b07fdd176d913a5f4bbda78f8836f19b"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
