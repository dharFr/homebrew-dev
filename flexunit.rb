require 'formula'

class Flexunit < Formula
  homepage 'https://github.com/apache/flex-flexunit'
  url 'http://mir2.ovh.net/ftp.apache.org/dist/flex/flexunit/4.2.0/binaries/apache-flex-flexunit-4.2.0-4.12.0-bin.tar.gz'
  sha1 '93ee9049373f6ba5126aa7725f0c00ee8840081a'
  version '4.2.0'

  def install
    prefix.install Dir["*"]
  end

  def caveats;
    <<-EOS.undent
    To use the SDK you will need to set $FLEXUNIT_HOME to your ~/.bashrc or ~/.zshenv :
      export FLEXUNIT_HOME=$(brew --prefix flexunit)

    EOS
  end
end
