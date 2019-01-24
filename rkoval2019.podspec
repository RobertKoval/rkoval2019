#
# Be sure to run `pod lib lint rkoval2019.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'rkoval2019'
  s.version          = '0.2.0'
  s.summary          = 'rkoval2019 - CoreData project'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
It is a swift pool projet. weeeeeeeeeeeeeeeeeeeeeeeeeeeeeeerrryyyy looooooooooooooooong description .. . .. .
                       DESC

  s.homepage         = 'https://github.com/RobertKoval/rkoval2019'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'RobertKoval' => 'kovalrobert@me.com' }
  s.source           = { :git => 'https://github.com/RobertKoval/rkoval2019.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  s.swift_version = '4.0'
  s.source_files = 'rkoval2019/Classes/*.{swift,xcdatamodeld}'
  
  s.resource_bundles = {
     'rkoval2019' => ['rkoval2019/Classes/*.xcdatamodeld']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'CoreData'
  # s.dependency 'AFNetworking', '~> 2.3'
end
