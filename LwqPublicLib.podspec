#
# Be sure to run `pod lib lint LwqPublicLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'LwqPublicLib'
s.version          = '0.2.2'
s.summary          = '添加头文件和快捷创建UI'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
TODO: 添加头文件和快捷创建UI 2021年06月30日
DESC

s.homepage         = 'https://github.com/danteliu/LwqPublicLib'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { '1849245841@qq.com' => '1849245841@qq.com' }
s.source           = { :git => 'https://github.com/danteliu/LwqPublicLib.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '9.0'

#s.source_files = 'LwqPublicLib/Classes/**/*'
s.source_files = 'LwqPublicLib/**/*.{h,m}'

# s.resource_bundles = {
#   'LwqPublicLib' => ['LwqPublicLib/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
s.dependency 'AFNetworking', '~> 4.0.1'
s.dependency 'Masonry', '~> 1.1.0'
s.dependency 'MJExtension', '~> 3.2.4'
s.dependency 'NerdyUI', '~> 1.2.1'
end
