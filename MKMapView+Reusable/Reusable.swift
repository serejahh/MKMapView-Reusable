//
//  Reusable.swift
//  MKMapView+Reusable
//
//  Created by Serhii Butenko on 3/8/16.
//  Copyright © 2016 Serhii Butenko. All rights reserved.
//

import Foundation

public protocol Reusable: class {
    
    static var reuseIdentifier: String { get }
}

public extension Reusable {
    
    static var reuseIdentifier: String {
        return String(self)
    }
}
