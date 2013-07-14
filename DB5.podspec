Pod::Spec.new do |s|
  s.name         = "DB5"
  s.version      = "0.0.1"
  s.summary      = "App Configuration via Plist."
  s.homepage     = "https://github.com/quartermaster/DB5"
  s.license      = 'MIT'
  s.author       = { "Q Branch" => "support@qbranch.co" }
  s.source       = { :git => "https://github.com/quartermaster/DB5.git", :commit => "c68104aba55ad6bd2430ccdcb770b9c62dba2bc5" }
  s.platform     = :ios, '5.0'
  s.source_files = 'Source', 'Source/**/*.{h,m}'
  s.exclude_files = 'Source/Exclude'
  s.requires_arc = true
end
