Pod::Spec.new do |spec|
  spec.name             = 'CardIO'
  spec.version          = '5.4.1'
  spec.license          = { type: 'MIT', file: 'LICENSE.md' }
  spec.homepage         = 'https://www.card.io'
  spec.authors          = { 'CardIO' => 'support@paypal.com' }
  spec.summary          = 'Credit card scanning for mobile apps'
  spec.social_media_url = 'https://twitter.com/cardio'
  spec.source           = { :git => 'https://github.com/card-io/card.io-iOS-SDK.git', :tag => "#{spec.version}" }
  spec.platform         = :ios, '8.0'
  spec.ios.deployment_target = '8.0'
  spec.requires_arc     = true
  spec.public_header_files = 'CardIO.framework/**/*.h'
  spec.source_files     = ['CardIO.framework/**/*.h','Empty.m']
  spec.frameworks       = 'Accelerate', 'AVFoundation', 'AudioToolbox', 'CoreMedia', 'CoreVideo', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Security', 'UIKit'
  spec.libraries        = 'c++'
  spec.prepare_command	= 'touch Empty.m'
  spec.vendored_libraries = 'libCardIO.a', 'libopencv_core.a', 'libopencv_imgproc.a'
end
