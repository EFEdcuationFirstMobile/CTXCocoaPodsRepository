Pod::Spec.new do |s|
  s.name     = 'PSPushPopPressView'
  s.version  = '0.0.2ctx'
  s.license  = 'MIT'
  s.summary  = 'Zoom, Rotate, Drag ? everything at the same time. A view-container for direct manipulation, inspired by Our Choice from Push Pop Press.'
  s.homepage = 'https://github.com/EFEdcuationFirstMobile/PSPushPopPressView'
  s.author   = { 'Peter Steinberger' => 'steipete@gmail.com' }
  s.source   = { :git => 'https://github.com/EFEdcuationFirstMobile/PSPushPopPressView.git',  :tag => "#{s.version}" }
  s.platform = :ios  
  s.source_files = 'PSPushPopPressView.{h,m}'
  s.framework = 'UIKit' , 'QuartzCore'
  s.requires_arc = true
end