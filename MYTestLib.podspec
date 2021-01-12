#
# Be sure to run `pod lib lint MYTestLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MYTestLib'
  s.version          = '0.1.18'
  s.summary          = 'test lib'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zzg4321/helloworldlib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zzg4321' => 'zzg4321@126.com' }
  s.source           = { :git => 'https://github.com/zzg4321/helloworldlib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.public_header_files = 'MYTestLib/cocos2d-x-lite/*.h','MYTestLib/cocos2d-x-lite/2d/*.h','MYTestLib/cocos2d-x-lite/base/*.h','MYTestLib/cocos2d-x-lite/platform/*.h','MYTestLib/cocos2d-x-lite/platform/ios/*.h','MYTestLib/cocos2d-x-lite/cocos/scripting/js-bindings/manual/jsb_module_register.hpp','MYTestLib/cocos2d-x-lite/cocos/scripting/js-bindings/manual/jsb_global.h','MYTestLib/cocos2d-x-lite/cocos/scripting/js-bindings/jswrapper/SeApi.h','MYTestLib/cocos2d-x-lite/cocos/scripting/js-bindings/event/EventDispatcher.h','MYTestLib/cocos2d-x-lite/cocos/scripting/js-bindings/manual/jsb_classtype.hpp','MYTestLib/Classes/include/*.h'
  s.source_files = 'MYTestLib/Classes/**/*',
  s.libraries = 'icucore','iconv','sqlite3','z'
   s.resource_bundles = {
     'MYTestLib' => ['MYTestLib/Assets/*.js','MYTestLib/Assets/src/*.js','MYTestLib/Assets/jsb-adapter/*.js']
   }
  s.subspec 'cocos2dx' do |ss|
    ss.source_files='MYTestLib/cocos2d-x-lite/cocos/*.{h,cpp}','MYTestLib/cocos2d-x-lite/extensions/assets-manager/*.{h,cpp}'
    ss.ios.source_files = 'MYTestLib/cocos2d-x-lite/cocos/platform/ios/*.{h,mm,pch}','MYTestLib/cocos2d-x-lite/external/ios/include/**/*.h'
  end
   s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => ["$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/platform/ios", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/plugin/jsbindings/auto", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/plugin/jsbindings/manual", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external/ios/include", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external/ios/include/spidermonkey", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/base", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/physics", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/math/kazmath", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/2d", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/gui", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/network", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/audio/include", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/editor-support", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/extensions", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external/sources", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external/chipmunk/include/chipmunk", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external/mac/include/v8", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/scripting/js-bindings/auto", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/scripting/js-bindings/manual", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/renderer"] }
#   s.public_header_files = 'MYTestLib/Classes/include/*.h'
   s.frameworks = 'UIKit', 'MapKit' ,'CoreMedia','AVKit','WebKit','SystemConfiguration','JavaScriptCore','GameController','SystemConfiguration','CoreServices','CoreFoundation','CFNetwork','CoreText','Security','CoreMotion','QuartzCore','OpenGLES','OpenAL','AudioToolbox','AVFoundation','Foundation','CoreGraphics'
  # s.dependency 'AFNetworking', '~> 2.3'
end
