class TermLlm < Formula
  desc "Terminal-first AI runtime for commands, chat, editing, tools, jobs, and agents"
  homepage "https://term-llm.com"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.121/term-llm_0.9.121_darwin_arm64.tar.gz"
      sha256 "cadcab9fcc228d2d107b0014bad4419bf05c1153b99f80fe915f13346ea92fc1"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.121/term-llm_0.9.121_darwin_amd64.tar.gz"
      sha256 "86e2936ea37e6c259a7249768855856f3a4c071ac5a3de3853208565ac3d7a23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.121/term-llm_0.9.121_linux_arm64.tar.gz"
      sha256 "4a98a49f004278c6a033befb701f0e97f03e648472b7508563c15a66aea16586"
    end

    on_intel do
      url "https://github.com/term-llm/term-llm/releases/download/v0.9.121/term-llm_0.9.121_linux_amd64.tar.gz"
      sha256 "c6835af1e87323367b1a8cbd027d09f32f61bfb071611ef1f6bd454973a23dce"
    end
  end

  def install
    bin.install "term-llm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/term-llm version")
  end
end
