Pod::Spec.new do |s|
  s.name             = 'FAAdaptiveImageView'
  s.version          = '0.1.0'
  s.summary          = 'Adaptive Image view for all iPhone devices.'

  s.description      = <<-DESC
Adaptive Image view for all iPhone devices. It also supports iPhone X screen size.
                       DESC

  s.homepage         = 'https://github.com/fahidattique55/FAAdaptiveImageView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fahid Attique' => 'fahidattique55@gmail.com' }
  s.source           = { :git => 'https://github.com/fahidattique55/FAAdaptiveImageView.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'FAAdaptiveImageView/Classes/**/*.{swift}'

end
