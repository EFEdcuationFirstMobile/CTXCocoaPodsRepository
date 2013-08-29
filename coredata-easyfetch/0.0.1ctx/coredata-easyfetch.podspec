Pod::Spec.new do |s|
  s.name         = "coredata-easyfetch"
  s.version      = "0.0.1ctx"
  s.summary      = "A fast fetch based on example code by Matt Gallagher"
  s.author		 = "Matt Gallagher"
  s.homepage     = "https://github.com/EFEdcuationFirstMobile/coredata-easyfetch"
  s.license      = { :type => 'MIT' }
  s.platform     = :ios
  s.ios.deployment_target = '5.1'
  s.source       = { :git => "https://github.com/EFEdcuationFirstMobile/coredata-easyfetch.git", :tag => '0.0.1ctx' }
  s.frameworks   = 'CoreData'
  s.source_files = '*.{h,m}'
  s.requires_arc = false
  s.prefix_header_contents = <<-EOS
  #ifdef __OBJC__
    #import <CoreData/CoreData.h>
  #endif
  EOS
end
