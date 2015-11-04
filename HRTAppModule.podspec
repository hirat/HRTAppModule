Pod::Spec.new do |s|
  s.name         = 'HRTAppModule'
  s.version      = '0.0.1'
  s.summary      = 'App module protocol'
  s.homepage     = 'http://github.com/hirat'
  s.license      = 'MIT"
  s.author       = { 'Hirat' => 'hirats@gmail.com' }
  s.source       = { :git => 'git@github.com:hirat/HRTAppModule.git', :tag => "v#{s.version}"}
  s.source_files  = '*.{h,m}'
  s.public_header_files = '*.h'

end
