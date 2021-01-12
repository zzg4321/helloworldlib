#
# Be sure to run `pod lib lint MYTestLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MYTestLib'
  s.version          = '0.1.22'
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
  s.public_header_files = 'MYTestLib/Classes/include/*.h'
  s.source_files = 'MYTestLib/Classes/**/*',
  s.libraries = 'icucore','iconv','sqlite3','z'
   s.resource_bundles = {
     'MYTestLib' => ['MYTestLib/Assets/*.js','MYTestLib/Assets/src/*.js','MYTestLib/Assets/jsb-adapter/*.js']
   }
  s.subspec 'cocos2dx' do |ss|
    
    ss.subspec 'cocos' do |sss|
      sss.subspec '2d' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/2d/*.{h,cpp}'
      end
    end
    ss.subspec 'editor-support' do |sss|
      sss.subspec 'particle' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/editor-support/particle/*.{h,cpp}'
      end
      sss.subspec 'spine-creator-support' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/editor-support/spine-creator-support/*.{h,cpp}'
      end
      sss.subspec 'dragonbones' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/editor-support/dragonbones/*.h','MYTestLib/cocos2d-x-lite/cocos/editor-support/dragonbones/**/*.{h,cpp}'
      end
      sss.subspec 'dragonbones-creator-support' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/editor-support/dragonbones-creator-support/*.{h,cpp}'
      end
      sss.subspec 'spine' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/editor-support/spine/*.{h,cpp}'
      end
      sss.source_files='MYTestLib/cocos2d-x-lite/cocos/editor-support/*.{h,cpp}'
    end
    ss.subspec 'ui' do |sss|
      sss.subspec 'webview' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/ui/webview/*.{h,mm}'
      end
      sss.subspec 'videoplayer' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/ui/videoplayer/*.{h,mm}'
      end
      sss.subspec 'edit-box' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/ui/edit-box/*.{h,mm}'
      end
    end
    ss.subspec 'audio' do |sss|
      sss.subspec 'apple' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/audio/apple/*.{h,mm}'
      end
      sss.subspec 'include' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/audio/include/*.h'
      end
      sss.source_files='MYTestLib/cocos2d-x-lite/cocos/audio/*.cpp'
    end
    ss.subspec 'storage' do |sss|
      sss.subspec 'local-storage' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/storage/local-storage/*.{h,cpp}'
      end
    end
    ss.subspec 'network' do |sss|
      sss.source_files='MYTestLib/cocos2d-x-lite/cocos/network/*.{h,cpp,m,mm}'
    end
    ss.subspec 'js-bindings' do |sss|
      sss.subspec 'jswrapper' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/scripting/js-binding/jswrapper/*.{h,cpp,hpp}'
        ssss.subspec 'chakracore' do |sssss|
          sssss.source_files='MYTestLib/cocos2d-x-lite/cocos/scripting/js-binding/jswrapper/chakracore/*.{h,cpp,hpp}'
        end
        ssss.subspec 'jsc' do |sssss|
          sssss.source_files='MYTestLib/cocos2d-x-lite/cocos/scripting/js-binding/jswrapper/jsc/*.{h,cpp,hpp,m,mm}'
        end
        ssss.subspec 'sm' do |sssss|
          sssss.source_files='MYTestLib/cocos2d-x-lite/cocos/scripting/js-binding/jswrapper/sm/*.{h,cpp,hpp}'
        end
        ssss.subspec 'v8' do |sssss|
          sssss.source_files='MYTestLib/cocos2d-x-lite/cocos/scripting/js-binding/jswrapper/v8/*.{h,cpp,hpp}'
          sssss.subspec 'debugger' do |ssssss|
            ssssss.source_files='MYTestLib/cocos2d-x-lite/cocos/scripting/js-binding/jswrapper/v8/debugger/*.{h,cpp,cc}'
          end
        end
      end
      sss.subspec 'auto' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/scripting/js-binding/auto/*.{hpp,cpp}'
      end
      sss.subspec 'manual' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/scripting/js-bindings/manual/*.{h,cpp,hpp,mm}'
      end
      sss.subspec 'event' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/scripting/js-binding/event/*.{h,cpp}'
      end
    end
    ss.subspec 'base' do |sss|
      sss.source_files='MYTestLib/cocos2d-x-lite/cocos/base/*.{h,cpp}'
    end
    ss.subspec 'renderer' do |sss|
      sss.source_files='MYTestLib/cocos2d-x-lite/cocos/renderer/*.{h,cpp}'
      sss.subspec 'memop' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/renderer/memop/*.hpp'
      end
      sss.subspec 'scene' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/renderer/scene/*.{hpp,cpp}'
      end
      sss.subspec 'renderer' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/renderer/renderer/*.{h,cpp}'
      end
      sss.subspec 'gfx' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/cocos/renderer/gfx/*.{h,cpp}'
      end
    end
    ss.subspec 'extensions' do |sss|
      sss.source_files='MYTestLib/cocos2d-x-lite/extensions/*.h'
      sss.subspec 'assets-manager' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/extensions/assets-manager/*.{h,cpp}'
      end
    end
    ss.subspec 'external' do |sss|
      sss.subspec 'edtaa3func' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/external/sources/edtaa3func/*.{h,cpp}'
      end
      sss.subspec 'xxtea' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/external/sources/xxtea/*.{h,cpp}'
      end
      sss.subspec 'SocketRocket' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/external/sources/SocketRocket/*.{h,m}'
        ssss.subspec 'Internal' do |sssss|
          sssss.source_files='MYTestLib/cocos2d-x-lite/external/sources/Internal/*.{h,m}','MYTestLib/cocos2d-x-lite/external/sources/Internal/**/*.{h,m}'
        end
      end
      sss.subspec 'tinydir' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/external/sources/tinydir/*.h'
      end
      sss.subspec 'ConvertUTF' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/external/sources/ConvertUTF/*.{h,cpp,c}'
      end
      sss.subspec 'xxhash' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/external/sources/xxhash/*.{h,c}'
      end
      sss.subspec 'tinyxml2' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/external/sources/tinyxml2/*.{h,cpp}'
      end
      sss.subspec 'unzip' do |ssss|
        ssss.source_files='MYTestLib/cocos2d-x-lite/external/sources/unzip/*.{h,cpp}'
      end
    end
    ss.subspec 'math' do |sss|
      sss.source_files='MYTestLib/cocos2d-x-lite/cocos/math/*.{h,cpp,hpp,inl}'
    end
    ss.subspec 'platform' do |sss|
      sss.source_files='MYTestLib/cocos2d-x-lite/cocos/platform/*.{h,cpp}'
      sss.subspec 'ios' do |ssss|
        ssss.ios.source_files='MYTestLib/cocos2d-x-lite/cocos/platform/ios/*.{h,mm,pch}'
      end
    end
    ss.source_files='MYTestLib/cocos2d-x-lite/cocos/*.{h,cpp}'
  end
   s.xcconfig = { 'USER_HEADER_SEARCH_PATHS' => ["$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/platform/ios", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/plugin/jsbindings/auto", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/plugin/jsbindings/manual", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external/ios/include", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external/ios/include/spidermonkey", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/base", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/physics", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/math/kazmath", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/2d", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/gui", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/network", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/audio/include", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/editor-support", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/extensions", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external/sources", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external/chipmunk/include/chipmunk", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/external/mac/include/v8", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/scripting/js-bindings/auto", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/scripting/js-bindings/manual", "$(SRCROOT)/../../MYTestLib/cocos2d-x-lite/cocos/renderer"] }
#   s.public_header_files = 'MYTestLib/Classes/include/*.h'
   s.frameworks = 'UIKit', 'MapKit' ,'CoreMedia','AVKit','WebKit','SystemConfiguration','JavaScriptCore','GameController','SystemConfiguration','CoreServices','CoreFoundation','CFNetwork','CoreText','Security','CoreMotion','QuartzCore','OpenGLES','OpenAL','AudioToolbox','AVFoundation','Foundation','CoreGraphics'
  # s.dependency 'AFNetworking', '~> 2.3'
end
