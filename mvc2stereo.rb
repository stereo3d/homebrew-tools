class Mvc2stereo < Formula
  desc "Convert MVC 3D video to stereo ProRes, SBS, or MV-HEVC"
  homepage "https://github.com/stereo3d/mvc2stereo"
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/stereo3d/mvc2stereo-releases/releases/download/v0.1.0/mvc2stereo-0.1.0-macos-arm64.tar.gz"
    sha256 "7ba648f8bc9e353b9b8fd815ce3af0a5cf61b2d3f5d4152fd505916fe001662d"
  else
    odie "mvc2stereo is currently distributed only for Apple Silicon Macs"
  end

  depends_on "ffmpeg"

  def install
    bin.install "mvc2stereo"
  end

  test do
    assert_match "USAGE", shell_output("#{bin}/mvc2stereo --help")
  end
end
