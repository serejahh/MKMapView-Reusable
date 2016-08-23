# MKMapView+Reusable

Reuse MKAnnotationView as easy as UITableViewCell/UICollectionViewCell.

## Usage

### Vanilla

``` swift
func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
    let annotationView: PassAnnotationView
    if let view = dequeueReusableAnnotationViewWithIdentifier(annotationViewType.reuseIdentifier) as? T {
        annotationView = view
    } else {
        return PassAnnotationView(annotation: annotation, reuseIdentifier: "annotation")
    }
    
    // configure the annotaion view 
        
    return annotationView
}
```

### With Reusable

``` swift
func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
    let annotationView = mapView.dequeueReusableAnnotationView(annotation) as PassAnnotationView
    
    // configure the annotaion view 
        
    return annotationView
}
```

## Installation

### Cocoapods

``` ruby
pod 'MKMapView-Reusable', '~> 1.0'
```

### Carthage

```
github `serejahh/MKMapView-Reusable` ~> 1.0
```
