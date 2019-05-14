//
//  HomeController.swift
//  p8_final
//
//  Created by Jonathan on 5/13/19.
//  Copyright © 2019 Jonathan. All rights reserved.
//

import Foundation
import UIKit
//Provides services for the map app that you see
import MapKit
//Provides services for determining device geographic location
import CoreLocation

class HomeController: UIViewController, UISearchBarDelegate {
    
    var delegate: HomeControllerDelegate?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    @objc func handleMenuToggle(){
        delegate?.handleMenuToggle(forMenuOption: nil)
        print("Toggle")
        
    }
    
    
    func configureNavigationBar(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    
}
