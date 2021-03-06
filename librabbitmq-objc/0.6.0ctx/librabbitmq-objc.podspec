Pod::Spec.new do |s|
  s.name     = 'librabbitmq-objc'
  s.version  = '0.6.0ctx'
  s.summary  = 'Objective-C wrapper for librabbitmq-c'
  s.homepage     = "http://ef.com"
  
  s.license      = { :type => 'GPL3', :file => 'LICENSE.md' }

  s.authors      = {
    "Marco Cattai"      => "marco.cattai@ef.com",
    "Stefan Ceriu"      => "stefan.ceriu@ef.com",
    "Eriprando Pacces"  => "eriprando.pacces@ef.com",
    "Dmitry Makarenko"  => "dmitry.makarenko@ef.com"}

  s.platform     = :ios
  s.ios.deployment_target = '5.1'
  
  s.homepage = 'https://github.com/EFEdcuationFirstMobile/librabbitmq-objc'
  s.preserve_paths = 'rabbitmq-c-v0.5.1/librabbitmq.a'
  s.source   = { :git => 'git@github.com:EFEdcuationFirstMobile/librabbitmq-objc.git', :tag => "#{s.version}" }
  s.source_files = '*.{h,m}', 'rabbitmq-c-v0.5.1/*.h'
  s.requires_arc = true
  
end
