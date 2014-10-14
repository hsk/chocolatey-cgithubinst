#! /usr/bin/ruby
require 'yaml'
require 'xmlsimple'

Dir.glob("./*.nuspec").each {|f|
  p f
  xml = File.read(f)
  p xml
  hash = XmlSimple.xml_in(xml, ContentKey:"__content__", KeepRoot:true)
  open(f+".yaml","w"){|fp|
    fp.write(hash.to_yaml())
    print hash.to_yaml()
  }
}
