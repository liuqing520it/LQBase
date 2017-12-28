Pod::Spec.new do |s|
    s.name             = 'LQBase'
    s.version          = '0.1.0'
    s.summary          = 'LQBase.'
    s.description      = <<-DESC
    TODO: 一些分类,网络封装及工具类
    DESC
    
    s.homepage         = 'https://github.com/liuqing520it/LQBase'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'liuqing520it' => '330663384@qq.com' }
    s.source           = { :git => 'https://github.com/liuqing520it/LQBase.git', :tag => s.version.to_s }
    s.ios.deployment_target = '9.0'
    s.source_files = 'LQBase/Classes/**/*'
    
    # s.resource_bundles = {
    #   'LQBase' => ['LQBase/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end

