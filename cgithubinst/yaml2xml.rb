#! /usr/bin/ruby
require 'yaml'
require 'xmlsimple'

Dir.glob("./*.nuspec.yaml").each {|f|
  hash = YAML.load_file(f)
  open(f.gsub(/\.yaml$/,""),"w"){|fp|
    fp.puts('<?xml version="1.0" encoding="utf-8"?>')
    fp.print XmlSimple.xml_out(hash, ContentKey:"__content__", KeepRoot:true)
  }
}
