//
//  appointmentdetails.swift
//  HarveyChuiDoctorProject
//
//  Created by Elliot Young on 10/7/16.
//  Copyright © 2016 Elliot Young. All rights reserved.
//
import UIKit
import MapKit
class AppointmentDetailsViewController: UIViewController {
    @IBOutlet weak var requestAppointmentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestAppointmentButton.layer.cornerRadius = 10
        
    }
}
