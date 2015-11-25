Pod::Spec.new do |s|
  s.name = 'Camarilla'
  s.version = '0.1'
  s.license = 'MIT'
  s.summary = 'JSON parser middleware for Swift 2 (Linux ready)'
  s.homepage = 'https://github.com/Zewo/Camarilla'
  s.authors = { 'Paulo Faria' => 'paulo.faria.rl@gmail.com' }
  s.source = { :git => 'https://github.com/Zewo/Camarilla.git', :tag => 'v0.1' }

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'

  s.source_files = 'Camarilla/**/*.swift'

  s.dependency 'Medea', '0.1'
  s.dependency 'Fuzz', '0.1.1'

  s.requires_arc = true
end