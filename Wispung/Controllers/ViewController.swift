//
//  ViewController.swift
//  Wispung
//
//  Created by Muhammad Irfan on 25/06/20.
//  Copyright © 2020 Muhammad Irfan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "Wispung"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PlaceTableViewCell", bundle: nil), forCellReuseIdentifier: "PlaceCell")
        
        let profileButton = UIBarButtonItem(image: UIImage(systemName: "person.crop.circle"), style: .plain, target: self, action: #selector(profileTapped))
        navigationItem.rightBarButtonItem = profileButton
    }
    
    @objc func profileTapped() {
        let controller = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        navigationController?.pushViewController(controller, animated: true)
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DetailViewController(nibName: "DetailViewController", bundle: nil)
        controller.place = places[indexPath.row]
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath) as! PlaceTableViewCell
        let place = places[indexPath.row]
        
        cell.photoPlace.image = place.photo
        cell.namePlace.text = place.name
        cell.locationPlace.text = place.location
        
        cell.photoPlace.clipsToBounds = true
        
        return cell
    }
}
