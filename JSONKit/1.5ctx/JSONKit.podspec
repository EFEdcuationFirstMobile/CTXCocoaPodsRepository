Pod::Spec.new do |s|
  s.name     = 'JSONKit'
  s.version  = '1.5ctx'
  s.license  = { :type => 'BSD', :file => 'LICENSE.md' }
  s.summary  = 'A Very High Performance Objective-C JSON Library.'
  s.homepage = 'https://github.com/johnezang/JSONKit'
  s.author   = 'John Engelhart'
  s.source   = { :git => 'https://github.com/EFEdcuationFirstMobile/JSONKit.git', :tag => '1.5ctx' }
  s.source_files   = 'JSONKit.*'
  s.requires_arc = false
end
