# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Xyscript < Formula
  desc "script for xycoder"
  homepage "https://www.test.com"
  url "https://github.com/littertwo/homebrew-xyscript/blob/master/dist/xyscript-0.1.6.5.tar.gz"
  version "0.1.6.5"
  sha256 "5b527750f176b940009bad6d820b4f4e36abbbc0211de1ca89eda7a7ec32366a"
   depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
#    system "./configure", "--disable-debug",
#                          "--disable-dependency-tracking",
#                          "--disable-silent-rules",
#                          "--prefix=#{prefix}"
#    # system "cmake", ".", *std_cmake_args
#    system "make", "install" # if this fails, try separate make/make install steps
#    etc.install Dir["src/*"]
#    mkdir "build" do
#        system "cmake", "..", *std_cmake_args
#        system "make"
#        system "make", "install" # if this fails, try separate make/make install steps
#    end
    bin.install "xyscript"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test xyscript`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
