Pod::Spec.new do |s|
  s.name     = 'AOPAspect'
  s.version  = '1.0.0ctx'
  s.platform = :ios, '5.0'
  s.summary  = 'Small AOP library for iOS.'
  s.description = 'Small AOP library for iOS.'
  s.homepage = 'https://github.com/EFEdcuationFirstMobile/AOP-for-Objective-C'
  s.authors  = {
    "Marco Cattai"      => "marco.cattai@ef.com",
    "Stefan Ceriu"      => "stefan.ceriu@ef.com",
    "Alberto DeBortoli" => "alberto.debortoli@ef.com",
    "Dmitry Makarenko"  => "dmitry.makarenko@ef.com" }
  s.source   = { :git => 'https://github.com/EFEdcuationFirstMobile/AOP-for-Objective-C.git', :tag => "#{s.version}" }
  s.license      = { :type => 'MIT' }
  s.source_files = 'AOPAspect/AOPAspect/*.{h,m}'
  s.requires_arc = true
end
