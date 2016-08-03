Pod::Spec.new do |s|
  s.name = 'ASLib'
  s.version = '0.5.0'
  s.summary = 'A short description of ASLib.'
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"cuijianpeng"=>"cuijianpeng@jodogame.com"}
  s.homepage = 'https://github.com/djcui/ASLib'
  s.description = 'TODO: Add long description of the pod here.'
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.preserve_paths       = 'ios/ASLib.framework'
  s.ios.public_header_files  = 'ios/ASLib.framework/Versions/A/Headers/*.h'
  s.ios.resource             = 'ios/ASLib.framework/Versions/A/Resources/**/*'
  s.ios.vendored_frameworks  = 'ios/ASLib.framework'
end
