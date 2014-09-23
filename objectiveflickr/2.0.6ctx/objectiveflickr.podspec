Pod::Spec.new do |s|
  s.name = 'objectiveflickr'
  s.version = '2.0.6ctx'
  s.license = 'MIT'
  s.summary = 'ObjectiveFlickr, a Flickr API framework for Objective-C.'
  s.homepage = 'https://github.com/lukhnos/objectiveflickr/'
  s.author = {"Lukhnos D. Liu" => "lukhnos@lukhnos.org"}
  s.source = {
    :git => 'https://github.com/EFEducationFirstMobile/objectiveflickr',
    :tag => '2.0.6ctx'
  }
  s.source_files = 'Source/*.{h,m}', 'LFWebAPIKit/*.{h,m}'
  s.resources = 'BridgeSupport'
  s.frameworks = 'SystemConfiguration', 'CFNetwork'
  s.requires_arc = false
end
