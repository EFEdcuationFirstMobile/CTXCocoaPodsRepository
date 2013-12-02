Pod::Spec.new do |s|
  s.name     = 'librabbitmq-objc'
  s.version  = '0.1.1ctx'
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
  s.preserve_paths = 'rabbitmq-lib/librabbitmq.a'
  s.source   = { :git => 'git@github.com:EFEdcuationFirstMobile/librabbitmq-objc.git', :tag => "#{s.version}" }
  s.source_files = '*.{h,m}', 'rabbitmq-lib/*.h'
  s.requires_arc = false
  s.exclude_files = 'AMQPTTLManager.{h,m}'
  
  s.subspec 'AMQPTTLManager' do |amqpttlmanager|
    amqpttlmanager.source_files = 'AMQPTTLManager.{h,m}'
    amqpttlmanager.requires_arc = true
  end
  
end
