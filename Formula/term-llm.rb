class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.129/term-llm_0.9.129_darwin_arm64.tar.gz"
      sha256 "fce9b823cd50045fa238e93e973ffb030e52713fb449ca466c19dbce0d203535"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.129/term-llm_0.9.129_darwin_amd64.tar.gz"
      sha256 "dd967bdfddd83a409075b36ceca2773204b8bf4df3499decb67284c86c81e946"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.129/term-llm_0.9.129_linux_arm64.tar.gz"
      sha256 "e7b3cb205c50662f128236ff5378e3e49a7f097cb43d9b9e42945e3e60bf9d4e"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.129/term-llm_0.9.129_linux_amd64.tar.gz"
      sha256 "ef7ca318d4bf050f54f8acaa11db967055de164a566f0e804f4aef9e2f62af90"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
