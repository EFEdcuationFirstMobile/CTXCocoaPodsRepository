Pod::Spec.new do |s|
  s.name         = "CTXFramework"
  s.summary      = "CTX iOS Framework"
  s.version      = "0.0.3"

  s.platform     = :ios
  s.ios.deployment_target = '7.0'
  s.requires_arc = true
  
  s.dependency 'AFNetworking',          '~> 1.3'
  s.dependency 'AutoCoding'
  s.dependency 'CocoaLumberjack',       '~> 1.9'
  s.dependency 'Dropbox-iOS-SDK'
  s.dependency 'JRSwizzle'
  s.dependency 'objectiveflickr'
  s.dependency 'OpenUDID'
  s.dependency 'TMCache'
  s.dependency 'Touchpose'
  s.dependency 'PSPushPopPressView',    '0.0.1ctx'
  s.dependency 'MBProgressHUD',         '0.9.1ctx'
  s.dependency 'Reachability'
  
  s.frameworks   = 'SystemConfiguration', 'CoreData', 'CoreMedia', 'CoreText', 'MediaPlayer', 'MobileCoreServices'
  s.libraries = 'z'

  s.source_files = 'CTXFramework/Sources/**/*.{h,m}', 'Core/Vendor/**/*.{h,m}'

  s.subspec 'Core' do |core|
      core.source_files = 'Core/Sources/**/*.{h,m}', 'Core/Vendor/**/*.{h,m}'
      
      core.exclude_files = 'Core/Sources/Excluded', 'Core/Sources/Categories/NSURL+IDN.{h,m}', 'Core/Sources/Utilities/CTXOrderedDictionary.{h,m}', 'Core/Sources/Reachability/*.{h,m}'
      
      core.resources = 'Core/Resources/**/*.*'

      core.subspec 'NonARC' do |nonARC|
          nonARC.source_files = 'Core/Sources/Reachability/*.{h,m}', 'Core/Sources/Categories/NSURL+IDN.{h,m}', 'Core/Sources/Utilities/CTXOrderedDictionary.{h,m}'
          nonARC.requires_arc = false
      end
  end

  s.subspec 'CoreUI' do |coreUI|
      coreUI.source_files = 'CoreUI/Sources/**/*.{h,m}', 'CoreUI/Vendor/**/*.{h,m}'

      coreUI.exclude_files = 'CoreUI/Sources/Excluded'

      coreUI.resources = 'CoreUI/Resources/**/*.*'
  end

  s.subspec 'ClassroomUI' do |classroomUI|
      classroomUI.source_files = 'ClassroomUI/Sources/**/*.{h,m}', 'ClassroomUI/Vendor/**/*.{h,m}'

      classroomUI.exclude_files = 'ClassroomUI/Sources/Excluded'

      classroomUI.resources = 'ClassroomUI/Resources/**/*.*'
  end

  s.subspec 'MediaCore' do |mediaCore|
      mediaCore.vendored_libraries = 'MediaCore/Vendor/GoogleAPI/libGTLTouchStaticLib.a'

      mediaCore.source_files = 'MediaCore/Sources/**/*.{h,m}', 'MediaCore/Vendor/**/*.{h,m}'

      mediaCore.exclude_files = 'MediaCore/Sources/Excluded'

      mediaCore.resources = 'MediaCore/Resources/**/*.*'
      
      mediaCore.subspec 'GMT' do |gmt|
          gmt.resources = 'MediaCore/Vendor/GoogleAPI/Touch/*.xib'
      end
  end

  s.subspec 'MediaUI' do |mediaUI|
      mediaUI.source_files = 'MediaUI/Sources/**/*.{h,m}', 'MediaUI/Vendor/**/*.{h,m}'

      mediaUI.exclude_files = 'MediaUI/Sources/Excluded'

      mediaUI.resources = 'MediaUI/Resources/**/*.*'
  end

end
