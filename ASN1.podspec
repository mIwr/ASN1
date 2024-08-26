Pod::Spec.new do |spec|
  spec.name         = "ASN1"
  spec.version      = "2.6.1"
  spec.summary      = "Abstract Syntax Notation One (ASN1) subset in Swift"
  spec.author       = { "Leif Ibsen" => "https://github.com/leif-ibsen" }
  spec.homepage     = "https://github.com/leif-ibsen/ASN1"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.osx.deployment_target = "10.13"
  spec.ios.deployment_target = "11.0"
  spec.tvos.deployment_target = "11.0"
  spec.watchos.deployment_target = "4.0"
  spec.swift_version = "5.0"
  spec.source        = { :git => "https://github.com/mIwr/ASN1.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/ASN1/*.swift", "Sources/ASN1/**/*.swift"
  spec.framework     = "Foundation"
  spec.dependency    "SwBigInt"
  spec.resource_bundles = {'ASN1' => ['Sources/ASN1/PrivacyInfo.xcprivacy']}
end
