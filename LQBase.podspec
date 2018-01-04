Pod::Spec.new do |s|
    s.name             = 'LQBase'
    s.version          = '0.2.0'
    s.summary          = 'LQBase.'
    s.description      = <<-DESC
    TODO: 一些分类,网络封装及工具类
    DESC
    s.homepage         = 'https://github.com/liuqing520it/LQBase'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'liuqing520it' => '330663384@qq.com' }
    s.source           = { :git => 'https://github.com/liuqing520it/LQBase.git', :tag => s.version.to_s }
    s.platform = :ios, '9.0'
    s.ios.deployment_target = '9.0'
    
    s.subspec 'Base' do |b|
        b.source_files = 'LQBase/Classes/Base/*'
    end
    
    s.subspec 'Category' do |c|
        c.source_files = 'LQBase/Classes/Category/*'
    end
    
    s.subspec 'Network' do |n|
        n.source_files = 'LQBase/Classes/Network/*'
        n.dependency 'Alamofire'
        n.dependency 'Kingfisher'
        n.dependency 'LQBase/Category' #由于Network 里用到了base里的代码
    end
    
    s.subspec 'Tools' do |t|
        t.source_files = 'LQBase/Classes/Tools/*'
    end
end

