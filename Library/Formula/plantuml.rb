require 'formula'

class Plantuml < Formula
  homepage 'http://plantuml.sourceforge.net/'
  url 'https://downloads.sourceforge.net/project/plantuml/plantuml.7997.jar'
  sha1 '9e1b0130e0fcee7b91402951abfecc469d93eaae'

  depends_on 'graphviz'

  def install
    jar = "plantuml.#{version}.jar"
    prefix.install jar
    bin.write_jar_script prefix/jar, "plantuml"
  end

  test do
    system "#{bin}/plantuml", "-testdot"
  end
end
