Pod::Spec.new do |s|
  s.name         = "CTXFramework"
  s.version      = "0.0.1"
  s.summary      = "CTX iOS Framework."
  s.homepage     = "http://ef.com"
  
  s.license      = { :type => 'BSD', :file => 'LICENSE.md' }
  
  s.authors      = { 
    "Marco Cattai"      => "marco.cattai@ef.com",
    "Stefan Ceriu"      => "stefan.ceriu@ef.com",
    "Alberto DeBortoli" => "alberto.debortoli@ef.com",
    "Pedro Gomes"       => "pedro.gomes@ef.com",
    "Dmitry Makarenko"  => "dmitry.makarenko@ef.com"}
  
  s.platform     = :ios
  s.ios.deployment_target = '5.1'
    
  s.source       = { :git => "https://github.com/EFEdcuationFirstMobile/CTXFramework.git", :tag => "#{s.version}", :submodules => true }
  s.dependency 'CocoaLumberjack'
  s.dependency 'JSONKit'
  s.dependency 'TMCache'
  s.dependency 'JRSwizzle'

  s.source_files = 'CTXFramework/Sources/**/*.{h,m}', 'CTXFramework/Vendor/**/*.{h,m}'
  s.exclude_files = 'CTXFramework/Sources/Categories/NSURL+IDN.{h,m}', 'CTXFramework/Sources/OrderedDictionary.{h,m}', 'CTXFramework/Vendor/librabbitmq-objc/*.{h,m}', 'CTXFramework/Vendor/Reachability/*.{h,m}'

  s.subspec 'Reachability' do |reachability|
    reachability.source_files = 'CTXFramework/Vendor/Reachability/*.{h,m}'
    reachability.requires_arc = false
  end

  s.subspec 'Categories' do |cat|
    cat.source_files = 'CTXFramework/Sources/Categories/NSURL+IDN.{h,m}', 'CTXFramework/Sources/OrderedDictionary.{h,m}'
    cat.requires_arc = false
  end

  s.subspec 'librabbitmq-objc' do |r| 
    r.source_files = 'CTXFramework/Vendor/librabbitmq-objc/*.{h,m}'
    r.requires_arc = false
  end

  s.preserve_paths = 'CTXFramework/Vendor/rabbitmq-lib/librabbitmq.a'
  s.frameworks   = 'CoreData', 'CoreMedia', 'MediaPlayer'
  s.libraries = 'z', 'rabbitmq'
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(SRCROOT)/Pods/CTXFramework/CTXFramework/Vendor/rabbitmq-lib/"' }
  s.requires_arc = true
  s.prefix_header_contents = <<-EOS
  #ifdef __OBJC__
    #import <Foundation/Foundation.h>
    #import <UIKit/UIKit.h>
    #import "CTXCommon.h"
    #import "CTXLog.h"
  #endif
  EOS
end
