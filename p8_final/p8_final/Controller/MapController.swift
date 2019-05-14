//
//  MapController.swift
//  p8_final
//
//  Created by Jonathan on 5/14/19.
//  Copyright © 2019 Jonathan. All rights reserved.
//

import UIKit
import MapKit

class MapController: UIViewController{
    
    
    var window: UIWindow?
    var mapView: MKMapView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapView = MKMapView()
        
        let leftMargin:CGFloat = 10
        let topMargin:CGFloat = 60
        let mapWidth:CGFloat = view.frame.size.width - 20
        let mapHeight:CGFloat = 1000
        
        mapView.frame = CGRect(x: leftMargin, y:topMargin, width: mapWidth, height: mapHeight)
        mapView.center = view.center
        view.addSubview(mapView)
        
        
        configureUI()
    }
    
    
    @objc func handleDismiss(){
        dismiss(animated: true, completion: nil)
    }
    
    
    func configureUI(){
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Map"
        navigationController?.navigationBar.barStyle = .black
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "close_icon").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleDismiss))
        
        
    }
    
    
    
    
}
