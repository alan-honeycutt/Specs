Pod::Spec.new do |s|
  s.name         = "Flash2Cocos2D"
  s.version      = "6"
  s.summary      = "Library to import animations made in Flash to Cocos2D."
  s.description  = "A modified grapefrukt-export creates xml descriptions of timeline animations.  Flash2Cocos2D imports that xml and recreates what were timeline animations."
  s.homepage     = "https://github.com/percentjuice/Flash2Cocos2D"
  s.license      = 'MIT'
  s.author       = 'cstuempges'
  s.source       = { :git => "https://github.com/percentjuice/Flash2Cocos2D.git", :commit => "469345b43f" }
  s.platform     = :ios, '5.0'
  s.source_files = 'FlashToCocosARC', 'FlashToCocosARC/*.{h,m}'
  s.requires_arc = true
  s.dependency 'TBXML', '1.5'
end
