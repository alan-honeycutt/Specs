Pod::Spec.new do |s|
  s.name         = "ReactiveCocoa"
  s.version      = "0.16.1"
  s.summary      = "A framework for composing and transforming streams of values."
  s.homepage     = "https://github.com/blog/1107-reactivecocoa-is-now-open-source"
  s.author       = { "Josh Abernathy" => "josh@github.com" }
  s.source       = { :git => "https://github.com/ReactiveCocoa/ReactiveCocoa.git", :tag => "v#{s.version}" }
  s.license      = 'MIT'
  s.description  = "ReactiveCocoa (RAC) is a framework for composing and transforming streams of values."

  s.requires_arc = true
  s.ios.deployment_target = '5.0'
  s.compiler_flags = '-DOS_OBJECT_USE_OBJC=0'

  s.subspec 'Core' do |sp|
    s.source_files = 'ReactiveCocoaFramework/ReactiveCocoa/*.{h,m}'
    s.ios.exclude_files = '**/*{NSButton,AppKit}*'
    s.osx.exclude_files = '**/*{UIControl,UIText,RACEventTrampoline,RACDelegateProxy}*'
    sp.header_dir = 'ReactiveCocoa'

    sp.dependency 'JRSwizzle', '~> 1.0'
    sp.dependency 'libextobjc/EXTKeyPathCoding', '~> 0.2.4'
    sp.dependency 'libextobjc/EXTConcreteProtocol', '~> 0.2.4'
    sp.dependency 'libextobjc/EXTScope', '~> 0.2.4'
  end

  s.subspec 'RACExtensions' do |sp|
    sp.source_files = 'RACExtensions/*.{h,m}'
    sp.ios.exclude_files = '**/*{NSTask}*'
    sp.dependency 'ReactiveCocoa/Core'
  end

  def s.pre_install (pod, _)
    pod.source_files.each { |source|
      contents = source.read
      if contents.gsub!(%r{\bReactiveCocoa/(?:\w+/)*(EXT\w+|metamacros)\.h\b}, '\1.h')
        File.open(source, 'w') { |file| file.puts(contents) }
      end
    }
  end
end
