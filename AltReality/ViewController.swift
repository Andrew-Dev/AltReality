//
//  ViewController.swift
//  AltReality
//
//  Created by Andrew Arpasi on 8/8/18.
//  Copyright © 2018 Andrew Arpasi. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController {
    var locationHelper: UserLocationHelper!
    
    func onLocationUpdate(location: CLLocation) {
        print(location)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.locationHelper = UserLocationHelper(onUpdate: self.onLocationUpdate)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

