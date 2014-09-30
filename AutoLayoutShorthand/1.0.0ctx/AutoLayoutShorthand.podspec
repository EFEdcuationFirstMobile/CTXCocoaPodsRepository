Pod::Spec.new do |s|
  s.name     = 'AutoLayoutShorthand'
  s.version  = '1.0.0'
  s.platform = :ios, '6.0'
  s.summary  = 'Alternative system for creating and adding Cocoa Auto Layout constraints.'
  s.description = 'Alternative system for creating and adding Cocoa Auto Layout constraints.'
  s.authors = 'Jonathan Rentzsch', 'Andrew Hershberger', 'Tony Arnold'
  s.homepage = 'https://github.com/rentzsch/AutoLayoutShorthand'
  s.source   = { :git => 'https://github.com/rentzsch/AutoLayoutShorthand', :tag => 'semver-1.0' }
  s.license      = { :type => 'MIT' }
  s.source_files = 'AutoLayoutShorthand.h.{h,m}'
  s.requires_arc = true
end
