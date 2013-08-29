Pod::Spec.new do |s|
  s.name         = "JMNoise"
  s.version      = "0.0.1ctx"
  s.summary      = "A category on UIView to easily apply a noise texture. Uses no external images or dependencies to make it very easy to drop into projects."
  s.author		 = "Jason Morrissey"
  s.homepage     = "https://github.com/EFEdcuationFirstMobile/JMNoise"
  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.platform     = :ios
  s.ios.deployment_target = '5.1'
  s.source       = { :git => "https://github.com/EFEdcuationFirstMobile/JMNoise.git", :tag => '0.0.1ctx' }
  s.source_files = 'JMNoise/*.{h,m}'
  s.requires_arc = true
end
