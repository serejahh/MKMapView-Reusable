//
//  MKMapView+Reusable.swift
//  MKMapView+Reusable
//
//  Created by Serhii Butenko on 3/8/16.
//  Copyright © 2016 Serhii Butenko. All rights reserved.
//

import Foundation
import MapKit

extension MKMapView {
    
    func dequeueReusableAnnotationView<T: MKAnnotationView where T: Reusable>(annotation: MKAnnotation, annotationViewType: T.Type = T.self) -> T {
        if let view = dequeueReusableAnnotationViewWithIdentifier(annotationViewType.reuseIdentifier) as? T {
            return view
        } else {
            return T(annotation: annotation, reuseIdentifier: annotationViewType.reuseIdentifier)
        }
    }
}

extension MKAnnotationView: Reusable {}
