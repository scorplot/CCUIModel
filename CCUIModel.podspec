#
# Be sure to run `pod lib lint CCUIModel.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'CCUIModel'
    s.version          = '0.0.4'
    s.summary          = 'A usefull libraray which make UI drived by model'

    s.description      = <<-DESC
    A usefull libraray which make UI drived by model. We just need to set relation between model and UI. The UI will be auto changed when model changed. The programmer only need to concern the relation which between model and UI, the libraray will automaticlly do other very well.
    DESC

    s.homepage         = 'http://www.scorplot.com'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }

    s.author           = { 'aruisi' => 'scorplot@aliyun.com' }
    s.source           = { :git => 'https://github.com/scorplot/CCUIModel.git', :tag => s.version.to_s }

    s.ios.deployment_target = '8.0'

    s.source_files = 'CCUIModel/Classes/**/*'
    s.dependency 'CircleReferenceCheck'


end
