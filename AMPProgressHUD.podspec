#
# Be sure to run `pod lib lint AMPProgressHUD.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AMPProgressHUD'
  s.version          = '0.1.1'
  s.summary          = '基于MBProgressHUD的封装'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  基于MBProgressHUD的封装，用于日常开发。
                       DESC

  s.homepage         = 'https://github.com/tangjugang/AMPProgressHUD'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Etre' => '437418200@qq.com' }
  s.source           = { :git => 'https://github.com/tangjugang/AMPProgressHUD.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.ios.vendored_framework   = 'AMPProgressHUD/AMPProgressHUD.framework'
  s.resources = 'AMPProgressHUD/*'
  s.dependency 'MBProgressHUD'

end
