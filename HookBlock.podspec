#
# Be sure to run `pod lib lint HookBlock.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HookBlock'
  s.version          = '1.0.0'
  s.summary          = '照搬 https://github.com/ebf/CTObjectiveCRuntimeAdditions ，方便使用，弄了个pods '

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/chuqingr/HookBlock'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '杨胜浩' => 'chuqingr@icloud.com' }
  s.source           = { :git => 'https://github.com/chuqingr/HookBlock.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform         = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc     = true

  s.source_files = 'HookBlock/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HookBlock' => ['HookBlock/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
