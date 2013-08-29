Pod::Spec.new do |s|
  s.name     = 'librabbitmq-objc'
  s.version  = '0.0.2ctx'
  s.summary  = 'Objective-C wrapper for librabbitmq-c'
  s.homepage     = "http://ef.com"
  
  s.license      = { :type => 'GPL3', :file => 'LICENSE.md' }

  s.authors      = {
    "Marco Cattai"      => "marco.cattai@ef.com",
    "Stefan Ceriu"      => "stefan.ceriu@ef.com",
    "Alberto DeBortoli" => "alberto.debortoli@ef.com",
    "Pedro Gomes"       => "pedro.gomes@ef.com",
    "Dmitry Makarenko"  => "dmitry.makarenko@ef.com"}

  s.platform     = :ios
  s.ios.deployment_target = '5.1'
  
  s.homepage = 'https://github.com/EFEdcuationFirstMobile/librabbitmq-objc'
  s.source   = { :git => 'https://github.com/EFEdcuationFirstMobile/librabbitmq-objc.git', :tag => '0.0.2ctx' }
  s.source_files = '*.*', 'rabbitmq-lib/*.*'
  s.requires_arc = false
end
