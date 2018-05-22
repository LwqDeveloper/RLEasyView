Pod::Spec.new do |s|
    s.name         = 'RLEasyView'
    s.version      = '0.0.1'
    s.summary      = 'An easy way to create view'
    s.homepage     = 'https://github.com/LwqDeveloper/RLEasyView'
    s.license      = 'MIT'
    s.authors      = {'WQ Lee' => 'lee_weiqiong@163.com'}
    s.platform     = :ios, '6.0'
    s.source       = {:git => 'https://github.com/LwqDeveloper/RLEasyView.git', :tag => s.version}
    s.source_files = 'RLEasyView/*.{h,m}'
    s.requires_arc = true
end