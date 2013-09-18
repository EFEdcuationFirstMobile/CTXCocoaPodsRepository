Pod::Spec.new do |s|
  s.name         = "MGImageUtilities"
  s.version      = "0.0.1ctx"
  s.summary      = "Useful UIImage categories for iPhone/iPad developers."
  s.homepage     = "http://mattgemmell.com/2010/07/05/mgimageutilities/"

  s.license      = { :type => 'BSD', :file => 'Source Code License.rtf' }

  s.author       = { "Matt Gemmell" => "matt@mattgemmell.com" }

  s.platform     = :ios
  s.ios.deployment_target = '5.1'
  
  s.source       = { :git => "https://github.com/EFEdcuationFirstMobile/MGImageUtilities.git", :tag => '0.0.1ctx' }
  s.source_files = 'Classes/UIImage*.{h,m}'
  s.requires_arc = true
end
