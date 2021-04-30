#
# Be sure to run `pod lib lint AXViewControllerTransitioning.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AXViewControllerTransitioning'
  s.version          = '1.1.0'
  s.summary          = 'A short description of AXViewControllerTransitioning.'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  类似UIAlertViewController 效果,封装成viewController
  DESC
  
  s.homepage         = 'https://gitee.com/axinger/AXViewControllerTransitioning'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'axinger' => 'axinger@outlook.com' }
  s.source           = { :git => 'https://gitee.com/axinger/AXViewControllerTransitioning.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '9.0'
  # 头文件
  s.public_header_files = 'AXViewControllerTransitioning/AXViewControllerTransitioning.h'
  # source_files: 库的源代码
  #  s.source_files = 'AXViewControllerTransitioning/Classes/**/*'
  s.source_files = 'AXViewControllerTransitioning/AXViewControllerTransitioning.h'
  # 虚拟文件夹
  s.subspec 'Component' do |ss|
    #    ss.public_header_files = 'AXViewControllerTransitioning/Classes/UIViewController+AXTransitioning.h'
    ss.source_files = "AXViewControllerTransitioning/Classes/{AXBaseAlertDefine,UIViewController+AXTransitioning,AXAlertTransitioningObserver}.{h,m}"
  end
  s.subspec 'Core' do |ss|
    ss.source_files = "AXViewControllerTransitioning/Classes/{AXAlertCentreAnimation,AXAlerUpwardAnimation,AXPresentationController}.{h,m}"
  end
  
  s.dependency 'ReactiveObjC' ,'~> 3.0.0'
end
