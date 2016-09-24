//
//  ViewController.swift
//  Foodie
//
//  Created by Khoa Ho on 9/24/16.
//  Copyright © 2016 VNBuzz. All rights reserved.
//

import UIKit
import MapKit

class ProductScreenController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView! = MKMapView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let latitude: CLLocationDegrees = 33.77
        
        let longitude: CLLocationDegrees = -84.4
        
        let latDelta: CLLocationDegrees = 0.015
        
        let lonDelta: CLLocationDegrees = 0.015
        
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        
        
    }

    
    
    
    @IBOutlet var importedImage: UIImageView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

