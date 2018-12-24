:Pod::Spec.new do |s|

s.name = "YXTool"
s.version = "1.0.0"
s.ios.deployment_target:'7.0'
s.summary = "工具类"
s.homepage = "https://github.com/tangdaoyong/ToolManager"
s.license = { :type => "MIT", :file => "LICENSE" }
s.author = { "Simple" => "1130275213@qq.com" }
s.source = { :git => "https://github.com/tangdaoyong/ToolManager", :tag => s.version }
s.requires_arc = true
s.frameworks = 'Foundation'

end
