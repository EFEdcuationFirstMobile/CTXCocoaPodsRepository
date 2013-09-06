Pod::Spec.new do |s|
  s.name         = "CTXFramework"
  s.version      = "0.0.6"
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
    
  s.source       = { :git => "git@github.com:EFEdcuationFirstMobile/CTXFramework.git", :tag => "#{s.version}" }
  s.dependency 'AFNetworking',     '1.3.2'
  s.dependency 'objectiveflickr',  '2.0.2'
  s.dependency 'CocoaLumberjack',  '1.6.2'
  s.dependency 'TMCache',          '1.2.0'
  s.dependency 'JRSwizzle',        '1.0'
  s.dependency 'JSONKit',          '1.5ctx'
  s.dependency 'librabbitmq-objc', '0.0.4ctx'
  s.dependency 'MGImageUtilities', '0.0.1ctx'
  s.dependency 'Dropbox-iOS-SDK',  '1.3.5'

  s.source_files = 'CTXFramework/Sources/**/*.{h,m}', 'CTXFramework/Vendor/**/*.{h,m}'
  s.exclude_files = 'CTXFramework/Sources/Core/Categories/NSURL+IDN.{h,m}', 'CTXFramework/Sources/Core/Utilities/CTXOrderedDictionary.{h,m}', 'CTXFramework/Sources/Core/Reachability/*.{h,m}'

  s.subspec 'Reachability' do |reachability|
    reachability.source_files = 'CTXFramework/Sources/Core/Reachability/*.{h,m}'
    reachability.requires_arc = false
  end

  s.subspec 'Categories' do |cat|
    cat.source_files = 'CTXFramework/Sources/Core/Categories/NSURL+IDN.{h,m}', 'CTXFramework/Sources/Core/Utilities/CTXOrderedDictionary.{h,m}'
    cat.requires_arc = false
  end
  
  s.subspec 'GoogleAPI' do |cat|
    cat.source_files = 'CTXFramework/Vendor/GoogleAPI/libGTLTouchStaticLib.{a}'
  end

  s.preserve_paths = '$(SRCROOT)/Pods/librabbitmq-objc/rabbitmq-lib/librabbitmq.a', '$(SRCROOT)/Vendor/GoogleAPI/libGTLTouchStaticLib.a'
  s.frameworks   = 'SystemConfiguration', 'CoreData', 'CoreMedia', 'MediaPlayer'
  s.libraries = 'z', 'rabbitmq', 'GTLTouchStaticLib'
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(SRCROOT)/Pods/librabbitmq-objc/rabbitmq-lib/" "$(SRCROOT)/Pods/CTXFramework/CTXFramework/Vendor/GoogleAPI/libGTLTouchStaticLib.a"' }
  s.requires_arc = true
  s.prefix_header_contents = <<-EOS
  #ifdef __OBJC__
	#import <SystemConfiguration/SystemConfiguration.h>
    #import <Foundation/Foundation.h>
    #import <UIKit/UIKit.h>
    #import "CTXCommon.h"
    #import "CTXLog.h"
  #endif
  EOS
end
