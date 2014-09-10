Pod::Spec.new do |s|
  s.name     = 'DragKit'
  s.version  = '0.0.5ctx'
  s.license  = 'BSD'
  s.summary  = 'An iOS opensource framework for supporting Drag & Drop within an application and between applications.'
  s.homepage = 'http://dragkit.org/'
  s.author   = { 'Zac White' => 'zac@velosmobile.com' }
  s.source   = { :git => 'https://github.com/EFEdcuationFirstMobile/dragkit.git', :tag => '0.0.6ctx' }
  s.platform = :ios  
  s.source_files = 'Drag/DKDragDropServer.{h,m}', 'Drag/DKApplicationRegistration.h.{h,m}'
  s.framework = 'UIKit' , 'Foundation'
  s.requires_arc = true
end
