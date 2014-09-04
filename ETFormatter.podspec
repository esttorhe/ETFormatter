Pod::Spec.new do |s|
  s.name         = "ETFormatter"
  s.version      = "1.0"
  s.summary      = "Custom CocoaLumberjack formatter."
  s.description  = "ETFormatter formats with custom colors and headers with detailed information of the class, function and line for CocoaLumberjack logger."
  s.homepage     = "https://github.com/esttorhe/ETFormatter"
  s.license      = 'MIT'
  s.author       = { "Esteban Torres" => "me@estebantorr.es" }
  s.source       = { :git => "https://github.com/esttorhe/ETFormatter.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'ETFormatter'
  s.dependency   'CocoaLumberjack'
end
