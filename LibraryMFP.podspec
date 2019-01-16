Pod::Spec.new do |s|  
    s.name              = 'LibraryMFP'
    s.version           = '1.1.0'
    s.summary           = 'A really cool SDK that logs stuff.'
    s.homepage          = 'http://example.com/'

    s.author            = { 'Name' => 'Raja Rahul' }
    s.license           = { :type => 'MIT', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :git => "https://github.com/rajarahul12/LibraryMFP.git",:tag => "1.1.0" }

    s.ios.deployment_target = '8.0'
    s.ios.vendored_frameworks = 'LibraryMFP.framework'
    s.dependency 'IBMMobileFirstPlatformFoundation', '~> 8.0'
end  