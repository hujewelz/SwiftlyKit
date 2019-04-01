#
# Be sure to run `pod lib lint SwiftlyKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftlyKit'
  s.version          = '0.1.1'
  s.summary          = 'A tool kit for Swift developer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
SwiftlyKit is a tool kit for Swift developer.
                       DESC

  s.homepage         = 'https://github.com/hujewelz/SwiftlyKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hujewelz' => 'hujewelz@163.com' }
  s.source           = { :git => 'https://github.com/hujewelz/SwiftlyKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.default_subspec = 'Core'

  
  s.subspec 'Core' do |cs|
      cs.source_files = 'SwiftlyKit/Classes/Core/**/*'
      
      cs.resource_bundles = {
          'SwiftlyKit' => ['SwiftlyKit/Assets/*.{xib,storyboard}']
      }
      cs.resource = ['SwiftlyKit/Assets/**/*.{png,xcassets,json,imageset}']
      cs.dependency 'SnapKit' #, '~> 3.2.0'
      cs.dependency 'Hotaru/Core'
      cs.dependency 'MJRefresh'#, '~> 3.1.12'
      #cs.dependency 'Kingfisher'#, '~> 3.5.2'
  end
end
