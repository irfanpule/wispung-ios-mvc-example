//
//  ProfileViewController.swift
//  Wispung
//
//  Created by Muhammad Irfan on 25/06/20.
//  Copyright © 2020 Muhammad Irfan. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Profile"

        nameLabel.text = "Muhammad Irfan"
        usernameLabel.text = "(irfanpule)"
        emailLabel.text = "irfan.pule2@gmail.com"
        profileImage.image = UIImage(named: "irfanpule")
        
        profileImage.layer.cornerRadius = profileImage.frame.width / 2
        profileImage.clipsToBounds = true
    }
}
