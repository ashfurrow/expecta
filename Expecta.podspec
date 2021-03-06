Pod::Spec.new do |s|
  s.name     = 'Expecta'
  s.version  = '0.3.2'
  s.license  = { :type => 'MIT', :file => 'LICENSE' }
  s.summary  = 'A matcher framework for Objective-C & Cocoa.'
  s.homepage = 'http://github.com/petejkim/expecta'
  s.author   = { 'Peter Jihoon Kim' => 'raingrove@gmail.com' }

  s.source   = { :git => 'https://github.com/specta/expecta.git', :tag => "v#{s.version}" }

  s.description = %{
    Expecta is a matcher framework for Objective-C and Cocoa. The main
    advantage of using Expecta over other matcher frameworks is that you do not
    have to specify the data types. Also, the syntax of Expecta matchers is
    much more readable and does not suffer from parenthesitis. If you have used
    Jasmine before, you will feel right at home!
  }

  s.source_files = 'Expecta/**/*.{h,m}'

  s.requires_arc = false
  s.ios.deployment_target = '5.1.1'
  s.osx.deployment_target = '10.7'

  s.frameworks   = 'Foundation', 'XCTest'
  s.osx.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/MacOSX.platform/Developer/Library/Frameworks"' }
  s.ios.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(DEVELOPER_FRAMEWORKS_DIR) "$(PLATFORM_DIR)/Developer/Library/Frameworks" "$(DEVELOPER_DIR)/Platforms/iPhoneSimulator.platform/Developer/Library/Frameworks"' }
end
