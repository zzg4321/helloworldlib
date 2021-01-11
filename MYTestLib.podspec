#
# Be sure to run `pod lib lint MYTestLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MYTestLib'
  s.version          = '0.1.9'
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
#  s.private_header_files = 'Pod/cocos2d-x-lite/*.h','MYTestLib/cocos2d-x-lite/2d/*.h','Pod/cocos2d-x-lite/base/*.h','Pod/cocos2d-x-lite/platform/*.h','Pod/cocos2d-x-lite/platform/ios/*.h','Pod/cocos2d-x-lite/cocos/scripting/js-bindings/manual/jsb_module_register.hpp','Pod/cocos2d-x-lite/cocos/scripting/js-bindings/manual/jsb_global.h','Pod/cocos2d-x-lite/cocos/scripting/js-bindings/jswrapper/SeApi.h','Pod/cocos2d-x-lite/cocos/scripting/js-bindings/event/EventDispatcher.h','Pod/cocos2d-x-lite/cocos/scripting/js-bindings/manual/jsb_classtype.hpp'
  s.source_files = 'MYTestLib/Classes/**/*'
  s.libraries = 'icucore','iconv','sqlite3','z'
   s.resource_bundles = {
     'MYTestLib' => ['MYTestLib/Assets/*.js','MYTestLib/Assets/src/*.js','MYTestLib/Assets/jsb-adapter/*.js']
   }

   s.public_header_files = 'MYTestLib/Classes/include/*.h'
   s.frameworks = 'UIKit', 'MapKit' ,'CoreMedia','AVKit','WebKit','SystemConfiguration','JavaScriptCore','GameController','SystemConfiguration','MobileCoreServices','CoreFoundation','CFNetwork','CoreText','Security','CoreMotion','QuartzCore','OpenGLES','OpenAL','AudioToolbox','AVFoundation','Foundation','CoreGraphics'
  # s.dependency 'AFNetworking', '~> 2.3'
end
