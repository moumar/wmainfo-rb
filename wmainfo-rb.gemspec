require 'rubygems'
SPEC = Gem::Specification.new do |s|
  s.name     = "wmainfo-rb"
  s.version  = "0.7"
  s.author   = "Darren Kirby"
  s.email    = "bulliver@badcomputer.org"
  s.homepage = "http://badcomputer.org/unix/code/wmainfo/"
  s.platform = Gem::Platform::RUBY
  s.summary  = "Pure Ruby lib for accessing info/tags from wma/wmv files"
  s.description = <<-EOF
:: wmainfo-rb ::
Author: Darren Kirby
mailto:bulliver@badcomputer.org
License: Ruby

 = Quick API docs =

  == Initializing ==

  require 'wmainfo'
  foo = WmaInfo.new("someSong.wma")
     ... or ...
  foo = WmaInfo.new("someVideo.wmv", :encoding=>"UTF-16LE") 
  (default encoding is ASCII)
     ... or ...
   foo = WmaInfo.new("someVideo.wmv", :debug=>1)

  == Public attributes ==

  @drm          :: 'true' if DRM present else 'false'
  @tags         :: dict of strings (id3 like data)
  @info         :: dict of variable types (non-id3 like data)
  @ext_info     :: dict of variable types (non-id3 like data) from ASF_Extended_Content_Description_Object
  @headerObject :: dict of arrays (name, GUID, size and offset of ASF objects)
  @stream       :: dict of variable types (stream properties data)

  == Public methods ==

  print_objects   :: pretty-print header objects
  hasdrm?         :: returns True if file has DRM
  hastag?('str')  :: returns True if @tags['str'] exists
  print_tags      :: pretty-print @tags dict
  hasinfo?('str') :: returns True if @info['str'] exists
  print_info      :: pretty-print @info dict
  print_stream    :: pretty-print @stream dict

  For more/different documentation see http://badcomputer.org/unix/code/wmainfo/

  == Thanks/Contributors == 

   Ilmari Heikkinen sent in a fix for uninitialized '@ext_info'.
   Guillaume Pierronnet sent in a patch which improves character encoding handling.
EOF
  s.files    = ["README", "lib/wmainfo.rb"]
  s.require_path     = "lib"
  s.has_rdoc         = true
  s.extra_rdoc_files = ["README"]
  s.rubyforge_project = 'wmainfo-rb'
end

