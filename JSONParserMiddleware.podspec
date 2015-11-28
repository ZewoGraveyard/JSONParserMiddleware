Pod::Spec.new do |s|
  s.name = 'JSONParserMiddleware'
  s.version = '0.1'
  s.license = 'MIT'
  s.summary = 'JSON parser middleware for Swift 2 (Linux ready)'
  s.homepage = 'https://github.com/Zewo/JSONParserMiddleware'
  s.authors = { 'Paulo Faria' => 'paulo.faria.rl@gmail.com' }
  s.source = { :git => 'https://github.com/Zewo/JSONParserMiddleware.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'JSONParserMiddleware/**/*.swift'

  s.dependency 'JSON'
  s.dependency 'HTTPMiddleware'

  s.requires_arc = true
end