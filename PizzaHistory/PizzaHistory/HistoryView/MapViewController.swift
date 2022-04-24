//
//  ViewController.swift
//  HistoryMap
//
//  Created by Ravi Kiran HR on 4/14/22.
//  Copyright © 2022 Ravi Kiran HR. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    var latitude:CLLocationDegrees = 40.8371
    var longitude:CLLocationDegrees = 14.2467
    var regionRadius:CLLocationDistance = 1000000
    private let mapView = MKMapView()
    func updateMap(){
        
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        mapView.setRegion(MKCoordinateRegion(center: coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius),animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        mapView.addAnnotation(annotation)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
        mapView.frame = view.frame
        view.addSubview(mapView)
    }


}

