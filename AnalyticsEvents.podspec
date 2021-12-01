# A simple spec to integrate generated event types

Pod::Spec.new do |s|
  s.name             = 'AnalyticsEvents'
  s.version          = '0.1.0'
  s.summary          = 'Cross-platform definitions of analytics events raised by matrix SDKs.'

  s.description      = <<-DESC
Auto generated event types for analytics in Element iOS.
                       DESC

  s.homepage         = "https://www.matrix.org"
  s.license          = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  s.author           = { "matrix.org" => "support@matrix.org" }
  s.social_media_url = "http://twitter.com/matrixdotorg"
  s.source           = { :git => 'https://github.com/matrix-org/matrix-analytics-events.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.1'

  s.source_files = 'types/swift/**/*.swift'
end
