//
//  DetailViewController.swift
//  Wispung
//
//  Created by Muhammad Irfan on 25/06/20.
//  Copyright © 2020 Muhammad Irfan. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    @IBOutlet weak var namePlace: UILabel!
    @IBOutlet weak var locationPlace: UILabel!
    @IBOutlet weak var timeOperationPlace: UILabel!
    @IBOutlet weak var photoPlace: UIImageView!
    @IBOutlet weak var descPlace: UILabel!
    @IBOutlet weak var buttonMap: UIButton!
    
    var place: Place!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Detail"
        buttonMap.layer.cornerRadius = 4
        
        namePlace.text = place.name
        locationPlace.text = place.location
        timeOperationPlace.text = place.operatingHours
        photoPlace.image = place.photo
        descPlace.text = place.description

    }
    
    @IBAction func buttonMapTapped(_ sender: UIButton) {
        openMapForPlace()
    }
    
    func openMapForPlace() {
        let latitude: CLLocationDegrees = place!.lat
        let longitude: CLLocationDegrees = place!.long

        let regionDistance: CLLocationDistance = 10000
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates, latitudinalMeters: regionDistance, longitudinalMeters: regionDistance)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)
        ]
        let placemark = MKPlacemark(coordinate: coordinates, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        
        mapItem.name = place.name
        mapItem.openInMaps(launchOptions: options)
    }
}
