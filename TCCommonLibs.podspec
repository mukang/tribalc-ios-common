#
# Be sure to run `pod lib lint TCCommonLibs.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TCCommonLibs'
  s.version          = '0.4.7'
  s.summary          = 'A powerful common libs.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                       TCCommonLibs is a powerful common libs.
                       DESC

  s.homepage         = 'http://dev.buluo-gs.com/gitlab/root/tribalc-ios-common'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'mukang' => 'mukang@buluo-gs.com' }
  s.source           = { :git => 'http://dev.buluo-gs.com/gitlab/root/tribalc-ios-common.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.source_files = 'TCCommonLibs/Classes/**/*'
  
  s.resource_bundles = {
     'TCCommonLibs' => ['TCCommonLibs/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.subspec 'Utility' do |utility|
    utility.source_files = 'TCCommonLibs/Classes/Utility/**/*'
    utility.public_header_files = 'TCCommonLibs/Classes/Utility/**/*.h'
  end

  s.subspec 'Category' do |category|
    category.source_files = 'TCCommonLibs/Classes/Category/**/*'
    category.public_header_files = 'TCCommonLibs/Classes/Category/**/*.h'
    category.dependency 'SDWebImage'
    category.dependency 'TCCommonLibs/Utility'
  end

  s.subspec 'DicToModel' do |dicToModel|
    dicToModel.source_files = 'TCCommonLibs/Classes/DicToModel/**/*'
    dicToModel.public_header_files = 'TCCommonLibs/Classes/DicToModel/**/*.h'
  end

  s.subspec 'Tools' do |tools|
    tools.source_files = 'TCCommonLibs/Classes/Tools/**/*'
    tools.public_header_files = 'TCCommonLibs/Classes/Tools/**/*.h'
    tools.dependency 'TCCommonLibs/WebService'
  end

  s.subspec 'WebService' do |webService|
    webService.source_files = 'TCCommonLibs/Classes/WebService/**/*'
    webService.public_header_files = 'TCCommonLibs/Classes/WebService/**/*.h'
    webService.dependency 'AFNetworking'
    webService.dependency 'TCCommonLibs/Utility'
  end

  s.subspec 'Controller' do |controller|
    controller.source_files = 'TCCommonLibs/Classes/Controller/**/*'
    controller.public_header_files = 'TCCommonLibs/Classes/Controller/**/*.h'
    controller.dependency 'TCCommonLibs/Category'
  end

  s.subspec 'UI' do |ui|
    ui.source_files = 'TCCommonLibs/Classes/UI/**/*'
    ui.public_header_files = 'TCCommonLibs/Classes/UI/**/*.h'
    ui.dependency 'SDWebImage'
    ui.dependency 'MJRefresh'
    ui.dependency 'Masonry'
    ui.dependency 'TCCommonLibs/Category'
    ui.dependency 'TCCommonLibs/Utility'
    ui.dependency 'TCCommonLibs/Tools'
  end

end
