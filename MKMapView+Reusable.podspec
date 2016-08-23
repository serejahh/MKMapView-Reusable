Pod::Spec.new do |s|
  s.name             = "MKMapView+Reusable"
  s.version          = "1.0"
  s.summary          = "Reuse MKAnnotationView as easy as UITableViewCell/UICollectionViewCell."

  s.homepage         = "https://github.com/serejahh/MKMapView-Reusable"
  s.license          = 'MIT'
  s.author           = { "Serhii Butenko" => "sereja.butenko@gmail.com" }
  s.source           = { :git => "https://github.com/serejahh/MKMapView-Reusable.git", :tag => s.version }
  s.social_media_url = 'https://twitter.com/serejahh'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.2'

  s.requires_arc     = true
  s.source_files     = 'MKMapView+Reusable/*.swift'
  s.frameworks       = 'MapKit'
end
