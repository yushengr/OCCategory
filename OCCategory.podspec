#
# Be sure to run `pod lib lint AdBanaSDKSample.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OCCategory'
  s.version          = '0.1.1'
  s.summary          = 'OC Category'
  s.description      = 'This is OC Category'

  s.homepage         = 'http://www.adbana.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'InsectQY' => '704861917@qq.com' }
  s.source           = { :git => 'https://github.com/yushengr/OCCategory.git', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'

  s.subspec 'NSDictionary' do |ss|
      ss.source_files = 'NSDictionary/Classes/**'
      ss.dependency 'CocoaSecurity'
  end

  s.subspec 'UICollectionView' do |ss|
      ss.source_files = 'UICollectionView/Classes/**'
  end

  s.subspec 'UITableView' do |ss|
      ss.source_files = 'UITableView/Classes/**'
  end

  s.subspec 'UIView' do |ss|
      ss.source_files = 'UIView/Classes/**'
  end

end
