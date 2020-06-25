//
//  DetailViewController.swift
//  Wispung
//
//  Created by Muhammad Irfan on 25/06/20.
//  Copyright © 2020 Muhammad Irfan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var namePlace: UILabel!
    @IBOutlet weak var locationPlace: UILabel!
    @IBOutlet weak var timeOperationPlace: UILabel!
    @IBOutlet weak var photoPlace: UIImageView!
    @IBOutlet weak var descPlace: UILabel!
    
    var place: Place?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = place {
            namePlace.text = result.name
            locationPlace.text = result.location
            timeOperationPlace.text = result.operatingHours
            photoPlace.image = result.photo
            descPlace.text = result.description
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
