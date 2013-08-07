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
  
  s.source_files = '*'
  s.requires_arc = true

end
