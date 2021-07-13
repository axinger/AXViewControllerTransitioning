#
# Be sure to run `pod lib lint AXViewControllerTransitioning.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AXViewControllerTransitioning'
  s.version          = '1.1.3'
  s.summary          = 'axinger iOS开发'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  类似UIAlertViewController 效果,封装成viewController
  DESC
  
  s.homepage         = 'https://www.jianshu.com/u/332ecb51d41b'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'axinger' => 'liu_weixing@qq.com' }
  s.source           = { :git => 'https://github.com/axinger/AXViewControllerTransitioning.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '9.0'
  
  
  s.prefix_header_contents = '#import <UIKit/UIKit.h>', '#import <Foundation/Foundation.h>'
  #可以将多行内容放到两个EOS中间
  # s.prefix_header_contents = <<-EOS
  # #ifdef __OBJC__
  # #import <UIKit/UIKit.h>
  # #else
  # EOS
  s.prefix_header_contents = <<-EOS
  #define HHHH @"测试代码"
  EOS
  
  #pod库暴露给用户工程的头文件。如果不指定那么source_files中的所有header都被认为是公共的。
  s.public_header_files = 'AXViewControllerTransitioning/AXViewControllerTransitioning.h'
  # source_files: 库的源代码
  s.source_files = 'AXViewControllerTransitioning/**/*.{h,m}'
  s.source_files = 'AXViewControllerTransitioning/*.h'
  
  # 多个模块之间,不能import隔壁模块的,要用子库的spec依赖其他subspec·
  s.subspec 'Core' do |ss|
    ss.source_files = 'AXViewControllerTransitioning/Core/*.{h,m}'
  end
  
  s.subspec 'Component' do |ss|
    ss.dependency 'AXViewControllerTransitioning/Core'
    ss.source_files = 'AXViewControllerTransitioning/Component/*.{h,m}'
  end
  
  s.dependency 'ReactiveObjC' ,'>= 3.0.0'
end
