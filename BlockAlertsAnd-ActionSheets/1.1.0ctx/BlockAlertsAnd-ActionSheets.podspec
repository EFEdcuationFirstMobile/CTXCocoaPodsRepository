Pod::Spec.new do |s|
  s.name     = 'BlockAlertsAnd-ActionSheets'
  s.version  = '1.1.0ctx'
  s.license  = 'MIT'
  s.summary  = 'Beautifully done UIAlertView and UIActionSheet replacements inspired by TweetBot.'
  s.homepage = 'https://github.com/gpambrozio/BlockAlertsAnd-ActionSheets'
  s.author   = { 'Gustavo Ambrozio' => '' }
  s.source   = { :git => 'https://github.com/EFEdcuationFirstMobile/BlockAlertsAnd-ActionSheets.git', :tag => "#{s.version}" }
  s.platform = :ios
  s.source_files = 'BlockAlertsDemo/ToAddToYourProjects', 'BlockAlertsDemo/ProjectSpecific/BlockUI.h'
  s.resources = "BlockAlertsDemo/images/ActionSheet/*.png", "BlockAlertsDemo/images/AlertView/*.png"

end