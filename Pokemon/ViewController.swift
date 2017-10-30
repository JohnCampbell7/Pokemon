//
//  ViewController.swift
//  Pokemon
//
//  Created by John Campbell on 30/10/2017.
//  Copyright © 2017 John Campbell. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var manager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        manager.delegate = self
        
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            print("Ready to go!")
            mapView.showsUserLocation = true
        } else {
          manager.requestWhenInUseAuthorization()
        }
        
        
        
        
        
    }


}

