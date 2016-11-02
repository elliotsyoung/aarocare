//
//  ViewController.swift
//  HarveyChuiDoctorProject
//
//  Created by Elliot Young on 10/7/16.
//  Copyright © 2016 Elliot Young. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var requestAppointmentButton: UIButton!
    @IBAction func requestAppointmentPressed(_ sender: AnyObject) {
        performSegue(withIdentifier: "appointmentDetailsSegue", sender: sender)
    }
    let regionRadius: CLLocationDistance = 1000
    override func viewDidLoad() {
        super.viewDidLoad()
        requestAppointmentButton.layer.cornerRadius = 10
        let initialLocation = CLLocation(latitude: 28.6139, longitude: 77.2090)
        centerMapOnLocation(location: initialLocation)
    }
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius * 5.0, regionRadius * 5.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }

}

