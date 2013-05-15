Pod::Spec.new do |s|
  s.name          = "PRAugmentedReality"
  s.version       = "1.0.0"
  s.summary       = "iOS AR Library with Drupal communication module."
  s.homepage      = "https://github.com/promet/PRAugmentedReality"
  s.license       = { :type => 'MIT', :file => 'LICENSE' }
  s.author        = { "Geoffroy Lesage" => "geoff@promethost.com" }
  
  s.source        = { :git => "https://github.com/promet/PRAugmentedReality.git", :tag => "v#{s.version}" }
  s.platform      = :ios, "5.0"
  s.requires_arc  = false
  
  s.source_files  = 'Classes/**/*.{h,m}', 'Frameworks/DIOS/*.{h,m}'
  s.resources     = ["Classes/Graphics/*.png", "Classes/AR/*.xib"]
  s.frameworks    = 'AVFoundation', 'CoreLocation', 'CoreMotion', 'MapKit', 'MobileCoreServices', 'SystemConfiguration'
  s.libraries     = 'libz', 'libsqlite'
  
  s.dependency 'FMDB', '~> 2.0'
  s.dependency 'AFNetworking', '~> 1.0'
end
