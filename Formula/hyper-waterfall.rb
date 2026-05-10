class HyperWaterfall < Formula
  desc "CLI helpers for Hyper-Waterfall framework lifecycle checks"
  homepage "https://github.com/postmelee/hyper-waterfall"
  url "https://registry.npmjs.org/hyper-waterfall/-/hyper-waterfall-0.2.0.tgz"
  sha256 "34dc90ca4b9cefa3f13034711e6bffc3f3c184360c44ab4924e00e26163e0cc7"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hyper-waterfall --version")
    shell_output("#{bin}/hyper-waterfall doctor --repo #{testpath}")
  end
end
