Pod::Spec.new do |s|

  s.name         = "SwiftAPIGenerator"
  s.version      = "0.0.2"
  s.summary      = "A tool that generate Swift API form framework."

  s.homepage     = "https://github.com/faberNovel/SwiftAPIGenerator"
  s.license      = 'MIT'
  s.authors      = 'Fabernovel'

  s.macos.deployment_target   = '10.9'
  s.ios.deployment_target     = '9.0'

  s.source       = { :http => "https://github.com/faberNovel/SwiftAPIGenerator/releases/download/#{s.version}/SwiftAPIGenerator.zip" }
  s.preserve_paths = '*'

end
