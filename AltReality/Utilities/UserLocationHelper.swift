//
//  UserLocationHelper.swift
//  AltReality
//
//  Created by Andrew Arpasi on 8/8/18.
//  Copyright © 2018 Andrew Arpasi. All rights reserved.
//

import UIKit
import CoreLocation

class UserLocationHelper: NSObject, CLLocationManagerDelegate {
    var locationManager: CLLocationManager!
    var onUpdate: (CLLocation) -> Void
    
    init(onUpdate: @escaping (CLLocation) -> Void) {
        self.locationManager = CLLocationManager()
        self.onUpdate = onUpdate
        super.init()
        
        self.locationManager.requestWhenInUseAuthorization()
        
        if(CLLocationManager.locationServicesEnabled()) {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("New location obtained")
        self.onUpdate(locations.last!)
    }
}
