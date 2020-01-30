//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Keri Levesque on 1/30/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetsCollectionViewController: UICollectionViewController {

    let planetController = PlanetController()
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }
    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else { return UICollectionViewCell() }
    
        let planet = planetController.planets[indexPath.item]
        
        cell.planet = planet
    
        return cell
    }

   
    
}
