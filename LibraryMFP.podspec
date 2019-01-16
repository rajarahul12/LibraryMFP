Pod::Spec.new do |s|  
    s.name              = 'LibraryMFP'
    s.version           = '1.0.0'
    s.summary           = 'A really cool SDK that logs stuff.'
    s.homepage          = 'http://example.com/'

    s.author            = { 'Name' => 'Raja Rahul' }
    s.license           = { :type => 'Apache-2.0', :file => 'LICENSE' }

    s.platform          = :ios
    s.source            = { :git => "URL",:tag => "1.0.0" }

    s.ios.deployment_target = '8.0'
    s.ios.vendored_frameworks = 'LibraryMFP.framework'
end  