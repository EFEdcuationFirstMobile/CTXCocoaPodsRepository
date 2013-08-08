Pod::Spec.new do |s|
  s.name         = "CTXFramework"
  s.version      = "0.0.1"
  s.summary      = "CTX iOS Framework."
  s.homepage     = "http://ef.com"
  
  s.license      = { :type => 'BSD', :file => 'LICENSE.txt' }
  
  s.authors      = { 
    "Alberto DeBortoli" => "alberto.debortoli@ef.com",
    "Dmitry Makarenko"  => "dmitry.makarenko@ef.com",
    "Marco Cattai"      => "marco.cattai@ef.com",
    "Pedro Gomes"       => "pedro.gomes@ef.com", 
    "Stefan Ceriu"      => "stefan.ceriu@ef.com"}
  
  s.platform     = :ios
  s.ios.deployment_target = '6.0'
    
  s.source       = { :git => "https://github.com/EFEdcuationFirstMobile/CTXFramework.git", :tag => "#{s.version}", :submodules => true }
  
  s.source_files = 'CTXFramework/Sources/**/*.{h,m}', 'CTXFramework/Vendor/**/*.{h,m}'
  s.frameworks   = 'CoreData'
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
